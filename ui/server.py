#!/usr/bin/env python3
"""
ChatMerger Web UI — FastAPI Backend
=====================================
Serves the web interface and handles all API calls for:
  - Browsing source/output directories
  - Running the pipeline (single, batch, merged-batch, zip)
  - Processing history tracking
  - Live progress via Server-Sent Events
  - Markdown preview
  - Index generation
"""

import sys
import os

# Ensure the project root is on the path
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

app = FastAPI(title="ChatMerger UI", version="2.0.0")

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_methods=["*"],
    allow_headers=["*"],
)

# Paths
SOURCE_DIR  = Path(ROOT) / "source"
OUTPUT_DIR  = Path(ROOT) / "output"
HISTORY_FILE = Path(ROOT) / "ui" / "history.json"
STATIC_DIR  = Path(ROOT) / "ui" / "static"

SOURCE_DIR.mkdir(exist_ok=True)
OUTPUT_DIR.mkdir(exist_ok=True)
STATIC_DIR.mkdir(exist_ok=True)

PYTHON_EXE = str(Path(ROOT) / "venv" / "Scripts" / "python.exe")
if not Path(PYTHON_EXE).exists():
    PYTHON_EXE = sys.executable

# In-memory job tracking
jobs: Dict[str, Dict] = {}

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
    records = records[:200]          # keep last 200
    save_history(records)

# ---------------------------------------------------------------------------
#  File helpers
# ---------------------------------------------------------------------------

def safe_path(base: Path, rel: str) -> Path:
    """Resolve a relative path safely within base."""
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
    items = []
    for p in sorted(target.iterdir(), key=lambda x: (not x.is_dir(), x.name.lower())):
        items.append(file_info(p, base))
    return items

# ---------------------------------------------------------------------------
#  Job runner
# ---------------------------------------------------------------------------

def new_job(job_type: str, description: str) -> str:
    import uuid
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


def run_pipeline(jid: str, input_files: List[Path], output_name: str,
                 extra_args: List[str] = None):
    """
    Run the full ChatMerger pipeline.
    Supports single file, batch (multiple separate), or merged batch (all → one).
    """
    try:
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        out_dir = OUTPUT_DIR / f"{output_name}_{timestamp}"
        out_dir.mkdir(parents=True, exist_ok=True)

        total = len(input_files)
        all_results = []

        for idx, src_file in enumerate(input_files, 1):
            update_job(jid, progress=int((idx - 1) / total * 80),
                       message=f"Processing {src_file.name} ({idx}/{total})…",
                       log_line=f"[{idx}/{total}] Processing: {src_file.name}")

            # Step 1: Convert
            converted = out_dir / f"{src_file.stem}_01_converted.json"
            update_job(jid, log_line="  → Converting format…")
            conv_result = subprocess.run(
                [PYTHON_EXE, str(Path(ROOT) / "convert_export.py"),
                 str(src_file), "-o", str(converted), "--stats"],
                capture_output=True, text=True, cwd=ROOT
            )
            if conv_result.returncode != 0 or not converted.exists():
                # Try direct pass
                converted = src_file
                update_job(jid, log_line="  → Using direct input (no conversion needed)")
            else:
                update_job(jid, log_line=f"  → Converted: {converted.name}")

            # Step 2: Merge
            merged_raw = out_dir / f"{src_file.stem}_02_merged.md"
            update_job(jid, log_line="  → Merging segments…")
            merge_args = [PYTHON_EXE, str(Path(ROOT) / "chat_merger.py"),
                          str(converted), "-o", str(merged_raw), "--flag-overlaps"]
            if extra_args:
                merge_args.extend(extra_args)
            merge_result = subprocess.run(
                merge_args, capture_output=True, text=True, cwd=ROOT
            )
            if merge_result.returncode != 0:
                update_job(jid, log_line=f"  ✗ Merge failed: {merge_result.stderr[:300]}")
                continue

            # Step 3: Post-process
            update_job(jid, log_line="  → Post-processing (clean + TOC + validate)…")
            post_result = subprocess.run(
                [PYTHON_EXE, str(Path(ROOT) / "post_process.py"),
                 str(merged_raw), "--all"],
                capture_output=True, text=True, cwd=ROOT
            )
            update_job(jid, log_line="  → Post-processing complete")

            # Gather stats from merged file
            stats = extract_md_stats(merged_raw)
            stats["source"] = src_file.name
            stats["output"] = merged_raw.relative_to(OUTPUT_DIR).as_posix()
            all_results.append(stats)

            update_job(jid, log_line=f"  ✓ Done: {merged_raw.name} ({stats.get('size_kb','?')} KB)")

        update_job(jid, progress=95, message="Finalizing…")

        # Generate index
        generate_index(out_dir)

        result_payload = {
            "output_dir":    out_dir.relative_to(OUTPUT_DIR).as_posix(),
            "files_processed": total,
            "results": all_results,
        }
        update_job(jid, progress=100, status="done", message="Complete!",
                   result=result_payload, log_line="✓ Pipeline complete!")

        append_history({
            "id":           jid,
            "type":         "pipeline",
            "description":  output_name,
            "files":        [f.name for f in input_files],
            "output_dir":   out_dir.relative_to(OUTPUT_DIR).as_posix(),
            "timestamp":    datetime.now().isoformat(),
            "results":      all_results,
        })

    except Exception as e:
        log.exception("Pipeline error")
        update_job(jid, status="error", message=str(e), log_line=f"✗ Error: {e}")


def run_merged_batch(jid: str, input_files: List[Path], output_name: str,
                     extra_args: List[str] = None):
    """
    Treat multiple JSON files as ONE single conversation — concatenate their
    messages array before merging.
    """
    try:
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        out_dir = OUTPUT_DIR / f"{output_name}_{timestamp}"
        out_dir.mkdir(parents=True, exist_ok=True)

        update_job(jid, progress=10, message="Loading & merging JSON inputs…",
                   log_line=f"Merging {len(input_files)} files into one conversation…")

        # Load and concatenate messages
        combined_messages = []
        for src in input_files:
            update_job(jid, log_line=f"  → Loading: {src.name}")
            try:
                # First try to convert
                converted = out_dir / f"{src.stem}_conv.json"
                conv_result = subprocess.run(
                    [PYTHON_EXE, str(Path(ROOT) / "convert_export.py"),
                     str(src), "-o", str(converted)],
                    capture_output=True, text=True, cwd=ROOT
                )
                target = converted if (conv_result.returncode == 0 and converted.exists()) else src
                with open(target, "r", encoding="utf-8") as f:
                    data = json.load(f)
                msgs = data.get("messages", data) if isinstance(data, dict) else data
                if isinstance(msgs, list):
                    combined_messages.extend(msgs)
                    update_job(jid, log_line=f"    + {len(msgs)} messages")
            except Exception as e:
                update_job(jid, log_line=f"    ✗ Failed to load {src.name}: {e}")

        # Save combined
        combined_path = out_dir / "00_combined.json"
        with open(combined_path, "w", encoding="utf-8") as f:
            json.dump({"messages": combined_messages}, f, ensure_ascii=False)

        update_job(jid, progress=40, message=f"Merging {len(combined_messages)} messages…",
                   log_line=f"Combined: {len(combined_messages)} total messages → {combined_path.name}")

        # Merge
        merged_raw = out_dir / f"{output_name}_merged.md"
        merge_args = [PYTHON_EXE, str(Path(ROOT) / "chat_merger.py"),
                      str(combined_path), "-o", str(merged_raw), "--flag-overlaps"]
        if extra_args:
            merge_args.extend(extra_args)
        merge_result = subprocess.run(merge_args, capture_output=True, text=True, cwd=ROOT)

        if merge_result.returncode != 0:
            raise RuntimeError(f"Merge failed: {merge_result.stderr[:500]}")

        update_job(jid, progress=75, message="Post-processing…",
                   log_line="Merge complete. Running post-processor…")

        subprocess.run(
            [PYTHON_EXE, str(Path(ROOT) / "post_process.py"), str(merged_raw), "--all"],
            capture_output=True, text=True, cwd=ROOT
        )

        generate_index(out_dir)

        stats = extract_md_stats(merged_raw)

        result_payload = {
            "output_dir":         out_dir.relative_to(OUTPUT_DIR).as_posix(),
            "files_merged":       len(input_files),
            "total_messages":     len(combined_messages),
            "combined_file":      combined_path.name,
            "output_file":        merged_raw.name,
            **stats,
        }

        update_job(jid, progress=100, status="done", message="Complete!",
                   result=result_payload,
                   log_line=f"✓ Merged batch complete → {merged_raw.name}")

        append_history({
            "id":           jid,
            "type":         "merged_batch",
            "description":  output_name,
            "files":        [f.name for f in input_files],
            "output_dir":   out_dir.relative_to(OUTPUT_DIR).as_posix(),
            "timestamp":    datetime.now().isoformat(),
            "stats":        stats,
        })

    except Exception as e:
        log.exception("Merged batch error")
        update_job(jid, status="error", message=str(e), log_line=f"✗ Error: {e}")


def extract_md_stats(md_file: Path) -> dict:
    """Extract summary stats from a merged markdown file."""
    stats = {"size_kb": 0, "conversations": 0, "words": 0}
    if not md_file.exists():
        return stats
    text = md_file.read_text(encoding="utf-8", errors="ignore")
    stats["size_kb"] = round(md_file.stat().st_size / 1024, 1)
    stats["conversations"] = len(re.findall(r'^## Conversation \d+', text, re.MULTILINE))
    stats["words"] = len(text.split())
    # Extract frontmatter stats
    fm = re.search(r'total_conversations:\s*(\d+)', text)
    if fm:
        stats["conversations"] = int(fm.group(1))
    overlaps = re.search(r'total_segments_merged:\s*(\d+)', text)
    if overlaps:
        stats["segments"] = int(overlaps.group(1))
    return stats


def generate_index(out_dir: Path):
    """Generate a simple index.md in the output directory."""
    items = []
    for md in sorted(out_dir.glob("*.md")):
        if md.name == "index.md":
            continue
        stats = extract_md_stats(md)
        items.append(f"- [{md.name}](./{md.name}) — {stats['conversations']} convs, "
                     f"{stats['words']:,} words, {stats['size_kb']} KB")
    if not items:
        return
    content = f"# Output Index\n\nGenerated: {datetime.now().isoformat()[:19]}\n\n"
    content += "\n".join(items)
    (out_dir / "index.md").write_text(content, encoding="utf-8")


def process_zip(jid: str, zip_path: Path, output_name: str, mode: str):
    """Extract ZIP and run pipeline on all JSON files found inside."""
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

            if mode == "merged":
                run_merged_batch(jid, json_files, output_name)
            else:
                run_pipeline(jid, json_files, output_name)
    except Exception as e:
        log.exception("ZIP processing error")
        update_job(jid, status="error", message=str(e), log_line=f"✗ Error: {e}")


# ---------------------------------------------------------------------------
#  Pydantic models
# ---------------------------------------------------------------------------

class ProcessRequest(BaseModel):
    files: List[str]          # relative paths within source/
    output_name: str
    mode: str = "pipeline"    # "pipeline" | "merged" | "merged_batch"
    extra_args: Optional[List[str]] = None


class BrowseRequest(BaseModel):
    dir: str = ""             # subfolder relative to source/
    base: str = "source"      # "source" | "output"

# ---------------------------------------------------------------------------
#  Routes — Static & Root
# ---------------------------------------------------------------------------

@app.get("/", response_class=HTMLResponse)
async def root():
    index = Path(ROOT) / "ui" / "index.html"
    return index.read_text(encoding="utf-8")


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
    if base == "source":
        target = safe_path(SOURCE_DIR, path)
    elif base == "output":
        target = safe_path(OUTPUT_DIR, path)
    else:
        raise HTTPException(400)
    if not target.exists() or target.is_dir():
        raise HTTPException(404)
    return FileResponse(str(target))


@app.get("/api/preview")
async def preview_file(base: str, path: str):
    """Return file content as text for preview."""
    if base == "source":
        target = safe_path(SOURCE_DIR, path)
    elif base == "output":
        target = safe_path(OUTPUT_DIR, path)
    else:
        raise HTTPException(400)
    if not target.exists() or target.is_dir():
        raise HTTPException(404, "File not found")

    text = target.read_text(encoding="utf-8", errors="replace")
    ext = target.suffix.lower()

    if ext == ".json":
        # Return pretty-printed JSON (first 5000 chars for speed)
        try:
            data = json.loads(text)
            pretty = json.dumps(data, indent=2, ensure_ascii=False)
            return PlainTextResponse(pretty[:8000] + ("\n…[truncated]" if len(pretty) > 8000 else ""))
        except Exception:
            return PlainTextResponse(text[:8000])
    elif ext in (".md", ".mdx"):
        return PlainTextResponse(text[:20000] + ("\n…[truncated]" if len(text) > 20000 else ""))
    else:
        return PlainTextResponse(text[:8000])


@app.post("/api/upload")
async def upload_file(file: UploadFile = File(...)):
    """Upload a file to the source directory."""
    safe_name = Path(file.filename).name
    dest = SOURCE_DIR / safe_name
    async with aiofiles.open(dest, "wb") as f:
        content = await file.read()
        await f.write(content)
    return {"name": safe_name, "size": len(content), "path": safe_name}


@app.post("/api/upload-zip")
async def upload_zip(file: UploadFile = File(...)):
    """Upload a ZIP to a temp area and list its JSON contents."""
    safe_name = Path(file.filename).name
    if not safe_name.lower().endswith(".zip"):
        raise HTTPException(400, "Only .zip files accepted here")
    dest = SOURCE_DIR / safe_name
    async with aiofiles.open(dest, "wb") as f:
        content = await file.read()
        await f.write(content)

    # List JSON files inside
    json_files = []
    with zipfile.ZipFile(dest, "r") as zf:
        for name in zf.namelist():
            if name.lower().endswith(".json"):
                json_files.append(name)
    return {"zip_file": safe_name, "json_files": json_files, "count": len(json_files)}


@app.delete("/api/file/{base}")
async def delete_file(base: str, path: str):
    if base == "source":
        target = safe_path(SOURCE_DIR, path)
    elif base == "output":
        target = safe_path(OUTPUT_DIR, path)
    else:
        raise HTTPException(400)
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

    # Resolve actual paths
    input_files = []
    for rel in req.files:
        p = safe_path(SOURCE_DIR, rel)
        if not p.exists():
            raise HTTPException(404, f"Source file not found: {rel}")
        input_files.append(p)

    jid = new_job(req.mode, req.output_name or "batch")

    if req.mode == "merged":
        background_tasks.add_task(run_merged_batch, jid, input_files,
                                  req.output_name or "merged_batch", req.extra_args)
    else:
        background_tasks.add_task(run_pipeline, jid, input_files,
                                  req.output_name or "batch", req.extra_args)

    return {"job_id": jid}


@app.post("/api/process-zip")
async def start_zip_process(output_name: str, mode: str = "pipeline",
                             file: UploadFile = File(...), background_tasks: BackgroundTasks = None):
    safe_name = Path(file.filename).name
    zip_dest = SOURCE_DIR / safe_name
    content = await file.read()
    async with aiofiles.open(zip_dest, "wb") as f:
        await f.write(content)

    jid = new_job("zip", f"{safe_name} → {output_name}")
    background_tasks.add_task(process_zip, jid, zip_dest, output_name, mode)
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


# Server-Sent Events for live job updates
@app.get("/api/job/{jid}/stream")
async def stream_job(jid: str, request: Request):
    async def event_generator():
        last_log_len = 0
        while True:
            if await request.is_disconnected():
                break
            j = jobs.get(jid)
            if not j:
                yield "data: {\"error\": \"job not found\"}\n\n"
                break
            # Send full job state
            payload = json.dumps(j, ensure_ascii=False)
            yield f"data: {payload}\n\n"
            if j["status"] in ("done", "error"):
                break
            await asyncio.sleep(0.5)

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
    cfg_path = Path(ROOT) / "config.yaml"
    if cfg_path.exists():
        text = cfg_path.read_text(encoding="utf-8")
        return PlainTextResponse(text)
    return PlainTextResponse("")


@app.put("/api/config")
async def save_config(request: Request):
    body = await request.body()
    cfg_path = Path(ROOT) / "config.yaml"
    cfg_path.write_bytes(body)
    return {"saved": True}


# ---------------------------------------------------------------------------
#  Routes — Output browsing + stats
# ---------------------------------------------------------------------------

@app.get("/api/output/stats")
async def output_stats():
    """Return aggregate stats across all output folders."""
    total_md = 0
    total_convs = 0
    total_words = 0
    folders = []
    for folder in sorted(OUTPUT_DIR.iterdir()):
        if not folder.is_dir():
            continue
        md_files = list(folder.glob("*merged*.md")) or list(folder.glob("*.md"))
        folder_convs = 0
        folder_words = 0
        folder_size  = 0
        for md in md_files:
            if md.name == "index.md":
                continue
            s = extract_md_stats(md)
            folder_convs += s.get("conversations", 0)
            folder_words += s.get("words", 0)
            folder_size  += md.stat().st_size
        folders.append({
            "name":          folder.name,
            "path":          folder.name,
            "md_count":      len(md_files),
            "conversations": folder_convs,
            "words":         folder_words,
            "size_kb":       round(folder_size / 1024, 1),
            "modified":      datetime.fromtimestamp(folder.stat().st_mtime).isoformat(),
        })
        total_md    += len(md_files)
        total_convs += folder_convs
        total_words += folder_words

    return {
        "total_folders":       len(folders),
        "total_md_files":      total_md,
        "total_conversations": total_convs,
        "total_words":         total_words,
        "folders":             folders,
    }


# ---------------------------------------------------------------------------
#  Mount static files (after all routes)
# ---------------------------------------------------------------------------

@app.on_event("startup")
async def startup():
    log.info(f"ChatMerger UI starting…")
    log.info(f"  Source  : {SOURCE_DIR}")
    log.info(f"  Output  : {OUTPUT_DIR}")
    log.info(f"  Python  : {PYTHON_EXE}")

# Mount static files — MUST be after all route definitions
app.mount("/static", StaticFiles(directory=str(STATIC_DIR)), name="static")

if __name__ == "__main__":
    import uvicorn
    uvicorn.run("server:app", host="127.0.0.1", port=8765, reload=False,
                app_dir=str(Path(__file__).parent))
