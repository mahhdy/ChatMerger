#!/usr/bin/env python3
"""
ChatMerger Web UI — FastAPI Backend  v2.1
==========================================
All pipeline stdout/stderr is captured and streamed line-by-line to the client.
"""

import sys
import os

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, ROOT)

import json
import zipfile
import shutil
import tempfile
import asyncio
import subprocess
import logging
import re
import uuid
from datetime import datetime
from pathlib import Path
from typing import Optional, List, Dict, Any

from fastapi import FastAPI, HTTPException, UploadFile, File, BackgroundTasks, Request
from fastapi.responses import (
    HTMLResponse, JSONResponse, FileResponse, StreamingResponse, PlainTextResponse
)
from fastapi.staticfiles import StaticFiles
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel
import aiofiles

# ---------------------------------------------------------------------------
#  Setup
# ---------------------------------------------------------------------------

logging.basicConfig(level=logging.INFO, format="%(asctime)s %(levelname)s %(message)s")
log = logging.getLogger("ui-server")

app = FastAPI(title="ChatMerger UI", version="2.1.0")
app.add_middleware(CORSMiddleware, allow_origins=["*"], allow_methods=["*"], allow_headers=["*"])

SOURCE_DIR   = Path(ROOT) / "source"
OUTPUT_DIR   = Path(ROOT) / "output"
HISTORY_FILE = Path(ROOT) / "ui" / "history.json"
STATIC_DIR   = Path(ROOT) / "ui" / "static"
README_FILE  = Path(ROOT) / "README.md"

SOURCE_DIR.mkdir(exist_ok=True)
OUTPUT_DIR.mkdir(exist_ok=True)
STATIC_DIR.mkdir(exist_ok=True)

PYTHON_EXE = str(Path(ROOT) / "venv" / "Scripts" / "python.exe")
if not Path(PYTHON_EXE).exists():
    PYTHON_EXE = sys.executable

# In-memory job store
jobs: Dict[str, Dict] = {}

# ---------------------------------------------------------------------------
#  Pydantic models
# ---------------------------------------------------------------------------

class ProcessRequest(BaseModel):
    files: List[str]               # relative paths within source/
    output_name: str = ""          # base name for output folder
    mode: str = "pipeline"         # "pipeline" | "merged"
    # Pipeline options
    flag_overlaps: bool = True     # --flag-overlaps
    format: str = "md"             # "md" | "mdx"
    verbose: bool = False          # --verbose
    skip_convert: bool = False     # skip convert_export.py step
    skip_postprocess: bool = False # skip post_process.py step
    extra_args: Optional[List[str]] = None  # any extra CLI args

# ---------------------------------------------------------------------------
#  History helpers
# ---------------------------------------------------------------------------

def load_history() -> List[dict]:
    if HISTORY_FILE.exists():
        try:
            with open(HISTORY_FILE, "r", encoding="utf-8") as f:
                return json.load(f)
        except Exception:
            return []
    return []

def save_history(records: List[dict]):
    HISTORY_FILE.parent.mkdir(exist_ok=True)
    with open(HISTORY_FILE, "w", encoding="utf-8") as f:
        json.dump(records, f, indent=2, ensure_ascii=False)

def append_history(record: dict):
    records = load_history()
    records.insert(0, record)
    save_history(records[:200])

# ---------------------------------------------------------------------------
#  File helpers
# ---------------------------------------------------------------------------

def safe_path(base: Path, rel: str) -> Path:
    target = (base / rel).resolve()
    if not str(target).startswith(str(base.resolve())):
        raise HTTPException(403, "Path traversal not allowed")
    return target

def file_info(p: Path, base: Path) -> dict:
    stat = p.stat()
    rel  = p.relative_to(base).as_posix()
    return {
        "name":     p.name,
        "path":     rel,
        "is_dir":   p.is_dir(),
        "size":     stat.st_size if p.is_file() else None,
        "modified": datetime.fromtimestamp(stat.st_mtime).isoformat(),
        "ext":      p.suffix.lower() if p.is_file() else None,
    }

def list_directory(base: Path, rel: str = "") -> List[dict]:
    target = safe_path(base, rel) if rel else base
    if not target.exists():
        return []
    return [
        file_info(p, base)
        for p in sorted(target.iterdir(), key=lambda x: (not x.is_dir(), x.name.lower()))
    ]

# ---------------------------------------------------------------------------
#  Job helpers
# ---------------------------------------------------------------------------

def new_job(job_type: str, description: str) -> str:
    jid = str(uuid.uuid4())[:8]
    jobs[jid] = {
        "id":          jid,
        "type":        job_type,
        "description": description,
        "status":      "running",
        "progress":    0,
        "message":     "Starting…",
        "log":         [],
        "result":      None,
        "started_at":  datetime.now().isoformat(),
        "finished_at": None,
    }
    return jid

def update_job(jid: str, *, progress: int = None, message: str = None,
               status: str = None, result: dict = None, log_line: str = None):
    j = jobs.get(jid)
    if not j:
        return
    if progress is not None:
        j["progress"] = progress
    if message is not None:
        j["message"] = message
    if status is not None:
        j["status"] = status
        if status in ("done", "error"):
            j["finished_at"] = datetime.now().isoformat()
    if result is not None:
        j["result"] = result
    if log_line is not None:
        j["log"].append(log_line)

# ---------------------------------------------------------------------------
#  Sub-process runner with live log capture
# ---------------------------------------------------------------------------

def run_step(jid: str, label: str, cmd: List[str], cwd: str = None) -> subprocess.CompletedProcess:
    """Run a subprocess and capture every output line into the job log."""
    update_job(jid, log_line=f"▶ {label}")
    update_job(jid, log_line=f"  cmd: {' '.join(str(c) for c in cmd)}")
    try:
        env = os.environ.copy()
        env["PYTHONIOENCODING"] = "utf-8"
        result = subprocess.run(
            cmd,
            capture_output=True, text=True,
            cwd=cwd or ROOT, encoding="utf-8", errors="replace",
            env=env
        )
        # Forward stdout lines
        for line in result.stdout.splitlines():
            line = line.strip()
            if line:
                update_job(jid, log_line=f"  | {line}")
        # Forward stderr lines (warnings/info from scripts)
        for line in result.stderr.splitlines():
            line = line.strip()
            if line:
                pfx = "  ! " if result.returncode != 0 else "  ~ "
                update_job(jid, log_line=f"{pfx}{line}")
        if result.returncode == 0:
            update_job(jid, log_line=f"  ✓ {label} — OK")
        else:
            update_job(jid, log_line=f"  ✗ {label} — exit code {result.returncode}")
        return result
    except Exception as e:
        update_job(jid, log_line=f"  ✗ {label} — exception: {e}")
        raise

# ---------------------------------------------------------------------------
#  The pipeline
# ---------------------------------------------------------------------------

def run_pipeline(jid: str, input_files: List[Path], output_name: str, req: ProcessRequest):
    """
    Full pipeline for each file individually:
      1. convert_export.py  (unless skip_convert)
      2. chat_merger.py
      3. post_process.py   (unless skip_postprocess)
    """
    try:
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        folder_name = f"{output_name}_{timestamp}" if output_name else f"batch_{timestamp}"
        out_dir = OUTPUT_DIR / folder_name
        out_dir.mkdir(parents=True, exist_ok=True)

        total = len(input_files)
        all_results = []

        update_job(jid, log_line=f"=== Batch Pipeline: {total} file(s) → {out_dir.name} ===")

        for idx, src_file in enumerate(input_files, 1):
            stem = src_file.stem
            pct_base = int((idx - 1) / total * 90)

            update_job(jid,
                       progress=pct_base,
                       message=f"[{idx}/{total}] {src_file.name}",
                       log_line=f"\n── File {idx}/{total}: {src_file.name} ──")

            # ── Step 1: Convert ──────────────────────────────────────
            if req.skip_convert:
                converted = src_file
                update_job(jid, log_line="  (skipping convert step)")
            else:
                converted = out_dir / f"{stem}_01_converted.json"
                conv_cmd = [PYTHON_EXE, str(Path(ROOT) / "convert_export.py"),
                            str(src_file), "-o", str(converted), "--stats"]
                if req.verbose:
                    conv_cmd.append("--verbose")
                r = run_step(jid, "Step 1: Convert export format", conv_cmd)
                if r.returncode != 0 or not converted.exists():
                    update_job(jid, log_line="  → Conversion failed/skip; using source file directly")
                    converted = src_file

            update_job(jid, progress=pct_base + int(30 / total))

            # ── Step 2: Merge ────────────────────────────────────────
            ext = "." + req.format
            merged_raw = out_dir / f"{stem}_02_merged{ext}"
            merge_cmd = [PYTHON_EXE, str(Path(ROOT) / "chat_merger.py"),
                         str(converted), "-o", str(merged_raw)]
            if req.flag_overlaps:
                merge_cmd.append("--flag-overlaps")
            if req.verbose:
                merge_cmd.append("--verbose")
            if req.extra_args:
                merge_cmd.extend(req.extra_args)

            r = run_step(jid, "Step 2: Merge chat segments", merge_cmd)
            if r.returncode != 0:
                update_job(jid, log_line=f"  ✗ Merge failed for {src_file.name} — skipping")
                all_results.append({"source": src_file.name, "status": "failed", "error": r.stderr[:300]})
                continue

            update_job(jid, progress=pct_base + int(60 / total))

            # ── Step 3: Post-process ─────────────────────────────────
            if req.skip_postprocess:
                update_job(jid, log_line="  (skipping post-process step)")
            else:
                post_cmd = [PYTHON_EXE, str(Path(ROOT) / "post_process.py"),
                            str(merged_raw), "--all"]
                run_step(jid, "Step 3: Post-process (cleanup, TOC, validate)", post_cmd)

            stats = extract_md_stats(merged_raw)
            stats["source"] = src_file.name
            stats["status"] = "ok"
            stats["output_file"] = merged_raw.relative_to(OUTPUT_DIR).as_posix()
            all_results.append(stats)

            update_job(jid, log_line=(
                f"  ✓ {src_file.name} → {merged_raw.name} | "
                f"{stats.get('conversations', 0)} convs, "
                f"{stats.get('words', 0):,} words, {stats.get('size_kb', 0)} KB"
            ))

        # ── Finalize ─────────────────────────────────────────────────
        generate_index(out_dir)
        ok_count = sum(1 for r in all_results if r.get("status") == "ok")

        result_payload = {
            "output_dir":      folder_name,
            "output_path":     str(out_dir),
            "files_processed": total,
            "files_ok":        ok_count,
            "files_failed":    total - ok_count,
            "results":         all_results,
            "total_convs":     sum(r.get("conversations", 0) for r in all_results),
            "total_words":     sum(r.get("words", 0) for r in all_results),
        }

        update_job(jid, progress=100, status="done",
                   message=f"Done — {ok_count}/{total} files OK → {folder_name}",
                   result=result_payload,
                   log_line=f"\n✓ Pipeline complete! {ok_count}/{total} succeeded → output/{folder_name}")

        append_history({
            "id":          jid,
            "type":        "pipeline",
            "description": output_name or "batch",
            "files":       [f.name for f in input_files],
            "output_dir":  folder_name,
            "timestamp":   datetime.now().isoformat(),
            "results":     all_results,
        })

    except Exception as e:
        log.exception("Pipeline error")
        update_job(jid, status="error", message=str(e), log_line=f"\n✗ Fatal error: {e}")


def run_merged_batch(jid: str, input_files: List[Path], output_name: str, req: ProcessRequest):
    """
    Combine all files into one conversation, then run merge + post-process once.
    """
    try:
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        folder_name = f"{output_name}_{timestamp}" if output_name else f"merged_{timestamp}"
        out_dir = OUTPUT_DIR / folder_name
        out_dir.mkdir(parents=True, exist_ok=True)

        update_job(jid, log_line=f"=== Merge-Into-One: {len(input_files)} file(s) → {out_dir.name} ===")

        combined_messages = []

        for i, src in enumerate(input_files, 1):
            update_job(jid, progress=int(i / len(input_files) * 30),
                       message=f"Loading {src.name} ({i}/{len(input_files)})…",
                       log_line=f"\n── Loading {i}/{len(input_files)}: {src.name} ──")

            # Convert first (unless skipped)
            if req.skip_convert:
                target = src
            else:
                converted = out_dir / f"{src.stem}_conv.json"
                conv_cmd = [PYTHON_EXE, str(Path(ROOT) / "convert_export.py"),
                            str(src), "-o", str(converted)]
                r = run_step(jid, f"Convert {src.name}", conv_cmd)
                target = converted if (r.returncode == 0 and converted.exists()) else src

            try:
                with open(target, "r", encoding="utf-8") as f:
                    data = json.load(f)
                msgs = data.get("messages", data) if isinstance(data, dict) else data
                if isinstance(msgs, list):
                    combined_messages.extend(msgs)
                    update_job(jid, log_line=f"  + {len(msgs)} messages (total so far: {len(combined_messages)})")
            except Exception as e:
                update_job(jid, log_line=f"  ✗ Could not load {src.name}: {e}")

        # Save combined JSON
        combined_path = out_dir / "00_combined.json"
        with open(combined_path, "w", encoding="utf-8") as f:
            json.dump({"messages": combined_messages}, f, ensure_ascii=False)
        update_job(jid, log_line=f"\nCombined JSON written: {len(combined_messages)} total messages")

        # Merge
        ext = "." + req.format
        merged_raw = out_dir / f"{output_name or 'merged'}_merged{ext}"
        merge_cmd = [PYTHON_EXE, str(Path(ROOT) / "chat_merger.py"),
                     str(combined_path), "-o", str(merged_raw)]
        if req.flag_overlaps:
            merge_cmd.append("--flag-overlaps")
        if req.verbose:
            merge_cmd.append("--verbose")
        if req.extra_args:
            merge_cmd.extend(req.extra_args)

        update_job(jid, progress=50, message="Merging all messages…")
        r = run_step(jid, "Merge all messages into one document", merge_cmd)
        if r.returncode != 0:
            raise RuntimeError(f"Merge step failed (exit {r.returncode})")

        # Post-process
        if not req.skip_postprocess:
            update_job(jid, progress=80, message="Post-processing…")
            post_cmd = [PYTHON_EXE, str(Path(ROOT) / "post_process.py"),
                        str(merged_raw), "--all"]
            run_step(jid, "Post-process (cleanup + TOC + validate)", post_cmd)

        generate_index(out_dir)
        stats = extract_md_stats(merged_raw)

        result_payload = {
            "output_dir":     folder_name,
            "output_path":    str(out_dir),
            "files_merged":   len(input_files),
            "total_messages": len(combined_messages),
            "output_file":    merged_raw.name,
            **stats,
        }

        update_job(jid, progress=100, status="done",
                   message=f"Done — {stats.get('conversations',0)} convs, {stats.get('words',0):,} words → {folder_name}",
                   result=result_payload,
                   log_line=f"\n✓ Merge-into-one complete → output/{folder_name}/{merged_raw.name}")

        append_history({
            "id":          jid,
            "type":        "merged_batch",
            "description": output_name or "merged",
            "files":       [f.name for f in input_files],
            "output_dir":  folder_name,
            "timestamp":   datetime.now().isoformat(),
            "stats":       stats,
        })

    except Exception as e:
        log.exception("Merged batch error")
        update_job(jid, status="error", message=str(e), log_line=f"\n✗ Fatal error: {e}")


def process_zip(jid: str, zip_path: Path, output_name: str, req: ProcessRequest):
    try:
        with tempfile.TemporaryDirectory() as tmp:
            tmp_path = Path(tmp)
            update_job(jid, progress=5, message="Extracting ZIP…",
                       log_line=f"Extracting {zip_path.name}…")
            with zipfile.ZipFile(zip_path, "r") as zf:
                zf.extractall(tmp_path)

            json_files = sorted(tmp_path.rglob("*.json"))
            update_job(jid, log_line=f"Found {len(json_files)} JSON files in ZIP")

            if not json_files:
                raise RuntimeError("No JSON files found in ZIP")

            if req.mode == "merged":
                run_merged_batch(jid, json_files, output_name, req)
            else:
                run_pipeline(jid, json_files, output_name, req)
    except Exception as e:
        log.exception("ZIP error")
        update_job(jid, status="error", message=str(e), log_line=f"\n✗ Error: {e}")

# ---------------------------------------------------------------------------
#  Stats helpers
# ---------------------------------------------------------------------------

def extract_md_stats(md_file: Path) -> dict:
    stats = {"size_kb": 0, "conversations": 0, "words": 0}
    if not md_file.exists():
        return stats
    text = md_file.read_text(encoding="utf-8", errors="ignore")
    stats["size_kb"] = round(md_file.stat().st_size / 1024, 1)
    stats["conversations"] = len(re.findall(r'^## Conversation \d+', text, re.MULTILINE))
    stats["words"] = len(text.split())
    fm = re.search(r'total_conversations:\s*(\d+)', text)
    if fm:
        stats["conversations"] = int(fm.group(1))
    seg = re.search(r'total_segments_merged:\s*(\d+)', text)
    if seg:
        stats["segments"] = int(seg.group(1))
    return stats


def generate_index(out_dir: Path):
    items = []
    for md in sorted(out_dir.glob("*.md")):
        if md.name == "index.md":
            continue
        stats = extract_md_stats(md)
        items.append(
            f"- [{md.name}](./{md.name}) — "
            f"{stats['conversations']} convs, {stats['words']:,} words, {stats['size_kb']} KB"
        )
    if not items:
        return
    content = f"# Output Index\n\nGenerated: {datetime.now().isoformat()[:19]}\n\n" + "\n".join(items)
    (out_dir / "index.md").write_text(content, encoding="utf-8")

# ---------------------------------------------------------------------------
#  Routes — Root + Static
# ---------------------------------------------------------------------------

@app.get("/", response_class=HTMLResponse)
async def root():
    return (Path(ROOT) / "ui" / "index.html").read_text(encoding="utf-8")


@app.get("/api/readme")
async def get_readme():
    if README_FILE.exists():
        return PlainTextResponse(README_FILE.read_text(encoding="utf-8"))
    return PlainTextResponse("# ChatMerger\n\nREADME.md not found.")

# ---------------------------------------------------------------------------
#  Routes — File system
# ---------------------------------------------------------------------------

@app.get("/api/browse/{base}")
async def browse(base: str, path: str = ""):
    if base == "source":
        return list_directory(SOURCE_DIR, path)
    elif base == "output":
        return list_directory(OUTPUT_DIR, path)
    raise HTTPException(400, "base must be 'source' or 'output'")


@app.get("/api/file/{base}")
async def get_file(base: str, path: str):
    base_dir = SOURCE_DIR if base == "source" else OUTPUT_DIR if base == "output" else None
    if not base_dir:
        raise HTTPException(400)
    target = safe_path(base_dir, path)
    if not target.exists() or target.is_dir():
        raise HTTPException(404)
    return FileResponse(str(target))


@app.get("/api/preview")
async def preview_file(base: str, path: str):
    base_dir = SOURCE_DIR if base == "source" else OUTPUT_DIR if base == "output" else None
    if not base_dir:
        raise HTTPException(400)
    target = safe_path(base_dir, path)
    if not target.exists() or target.is_dir():
        raise HTTPException(404, "File not found")
    text = target.read_text(encoding="utf-8", errors="replace")
    if target.suffix.lower() == ".json":
        try:
            pretty = json.dumps(json.loads(text), indent=2, ensure_ascii=False)
            return PlainTextResponse(pretty[:10000] + ("\n…[truncated]" if len(pretty) > 10000 else ""))
        except Exception:
            pass
    return PlainTextResponse(text[:30000] + ("\n…[truncated]" if len(text) > 30000 else ""))


@app.post("/api/upload")
async def upload_file(file: UploadFile = File(...)):
    safe_name = Path(file.filename).name
    dest = SOURCE_DIR / safe_name
    content = await file.read()
    async with aiofiles.open(dest, "wb") as f:
        await f.write(content)
    return {"name": safe_name, "size": len(content), "path": safe_name}


@app.post("/api/upload-zip")
async def upload_zip(file: UploadFile = File(...)):
    safe_name = Path(file.filename).name
    if not safe_name.lower().endswith(".zip"):
        raise HTTPException(400, "Only .zip files accepted")
    dest = SOURCE_DIR / safe_name
    content = await file.read()
    async with aiofiles.open(dest, "wb") as f:
        await f.write(content)
    json_files = []
    with zipfile.ZipFile(dest, "r") as zf:
        for name in zf.namelist():
            if name.lower().endswith(".json"):
                json_files.append(name)
    return {"zip_file": safe_name, "json_files": json_files, "count": len(json_files)}


@app.delete("/api/file/{base}")
async def delete_file_route(base: str, path: str):
    base_dir = SOURCE_DIR if base == "source" else OUTPUT_DIR if base == "output" else None
    if not base_dir:
        raise HTTPException(400)
    target = safe_path(base_dir, path)
    if not target.exists():
        raise HTTPException(404)
    if target.is_dir():
        shutil.rmtree(target)
    else:
        target.unlink()
    return {"deleted": path}

# ---------------------------------------------------------------------------
#  Routes — Processing
# ---------------------------------------------------------------------------

@app.post("/api/process")
async def start_process(req: ProcessRequest, background_tasks: BackgroundTasks):
    if not req.files:
        raise HTTPException(400, "No files selected")
    input_files = []
    for rel in req.files:
        p = safe_path(SOURCE_DIR, rel)
        if not p.exists():
            raise HTTPException(404, f"Source file not found: {rel}")
        input_files.append(p)

    jid = new_job(req.mode, req.output_name or "batch")
    if req.mode == "merged":
        background_tasks.add_task(run_merged_batch, jid, input_files, req.output_name or "merged", req)
    else:
        background_tasks.add_task(run_pipeline, jid, input_files, req.output_name or "batch", req)
    return {"job_id": jid}


@app.post("/api/process-zip")
async def start_zip_process(output_name: str = "zip_output", mode: str = "pipeline",
                             file: UploadFile = File(...),
                             background_tasks: BackgroundTasks = None):
    safe_name = Path(file.filename).name
    zip_dest = SOURCE_DIR / safe_name
    content = await file.read()
    async with aiofiles.open(zip_dest, "wb") as f:
        await f.write(content)
    # Build a minimal req object for options
    req = ProcessRequest(files=[], output_name=output_name, mode=mode)
    jid = new_job("zip", f"{safe_name} → {output_name}")
    background_tasks.add_task(process_zip, jid, zip_dest, output_name, req)
    return {"job_id": jid}


@app.get("/api/job/{jid}")
async def get_job(jid: str):
    j = jobs.get(jid)
    if not j:
        raise HTTPException(404, "Job not found")
    return j


@app.get("/api/jobs")
async def list_jobs():
    return list(reversed(list(jobs.values())))


@app.get("/api/job/{jid}/stream")
async def stream_job(jid: str, request: Request):
    async def event_generator():
        last_log_len = 0
        while True:
            if await request.is_disconnected():
                break
            j = jobs.get(jid)
            if not j:
                yield 'data: {"error":"job not found"}\n\n'
                break
            payload = json.dumps(j, ensure_ascii=False)
            yield f"data: {payload}\n\n"
            if j["status"] in ("done", "error"):
                break
            await asyncio.sleep(0.4)
    return StreamingResponse(
        event_generator(),
        media_type="text/event-stream",
        headers={"Cache-Control": "no-cache", "X-Accel-Buffering": "no"},
    )

# ---------------------------------------------------------------------------
#  Routes — History
# ---------------------------------------------------------------------------

@app.get("/api/history")
async def get_history():
    return load_history()

@app.delete("/api/history")
async def clear_history():
    save_history([])
    return {"cleared": True}

# ---------------------------------------------------------------------------
#  Routes — Config
# ---------------------------------------------------------------------------

@app.get("/api/config")
async def get_config():
    cfg = Path(ROOT) / "config.yaml"
    return PlainTextResponse(cfg.read_text(encoding="utf-8") if cfg.exists() else "")

@app.put("/api/config")
async def save_config_route(request: Request):
    body = await request.body()
    (Path(ROOT) / "config.yaml").write_bytes(body)
    return {"saved": True}

# ---------------------------------------------------------------------------
#  Routes — Output stats
# ---------------------------------------------------------------------------

@app.get("/api/output/stats")
async def output_stats():
    total_md = total_convs = total_words = 0
    folders = []
    if not OUTPUT_DIR.exists():
        return {"total_folders": 0, "total_md_files": 0,
                "total_conversations": 0, "total_words": 0, "folders": []}
    for folder in sorted(OUTPUT_DIR.iterdir()):
        if not folder.is_dir():
            continue
        md_files = [f for f in folder.glob("*.md") if f.name != "index.md"]
        f_convs = f_words = f_size = 0
        for md in md_files:
            s = extract_md_stats(md)
            f_convs += s.get("conversations", 0)
            f_words += s.get("words", 0)
            f_size  += md.stat().st_size
        folders.append({
            "name":          folder.name,
            "path":          folder.name,
            "md_count":      len(md_files),
            "conversations": f_convs,
            "words":         f_words,
            "size_kb":       round(f_size / 1024, 1),
            "modified":      datetime.fromtimestamp(folder.stat().st_mtime).isoformat(),
        })
        total_md    += len(md_files)
        total_convs += f_convs
        total_words += f_words
    return {
        "total_folders":       len(folders),
        "total_md_files":      total_md,
        "total_conversations": total_convs,
        "total_words":         total_words,
        "folders":             folders,
    }

# ---------------------------------------------------------------------------
#  Startup + Static mount
# ---------------------------------------------------------------------------

@app.on_event("startup")
async def startup():
    log.info("ChatMerger UI v2.1 starting…")
    log.info(f"  Source : {SOURCE_DIR}")
    log.info(f"  Output : {OUTPUT_DIR}")
    log.info(f"  Python : {PYTHON_EXE}")

app.mount("/static", StaticFiles(directory=str(STATIC_DIR)), name="static")

if __name__ == "__main__":
    import uvicorn
    uvicorn.run("server:app", host="127.0.0.1", port=8765, reload=False,
                app_dir=str(Path(__file__).parent))
