/* ============================================================
   ChatMerger UI v2.1 — Full App Logic
   ============================================================ */

const API = '';

// ── State ──────────────────────────────────────────────────
let sourceCurrentPath = '';
let browserCurrentPath = '';
let browserBase = 'source';
let selectedFiles = new Set();
let activeJobs = new Map();       // jid → EventSource
let allOutputFolders = [];
let selectedZipFile = null;
let finishedJobs = new Set();
let sourceItemsCache = [];
let browserItemsCache = [];

// ── Theme ──────────────────────────────────────────────────
let currentTheme = localStorage.getItem('theme') || 'dark';
document.documentElement.setAttribute('data-theme', currentTheme);

function toggleTheme() {
    currentTheme = currentTheme === 'dark' ? 'light' : 'dark';
    document.documentElement.setAttribute('data-theme', currentTheme);
    localStorage.setItem('theme', currentTheme);
    document.getElementById('themeToggle').textContent = currentTheme === 'dark' ? '🌞' : '🌙';
}

// ── Bootstrap ──────────────────────────────────────────────
document.addEventListener('DOMContentLoaded', () => {
    document.getElementById('themeToggle').textContent = currentTheme === 'dark' ? '🌞' : '🌙';
    refreshSourceList();
    loadSidebarStats();
    loadHistory();
    loadConfig();
    loadOutputStats();
    updateOutputPreview();
    setInterval(loadSidebarStats, 30000);

    // Watch output name field
    document.getElementById('outputName').addEventListener('input', updateOutputPreview);
});

// ══════════════════════════════════════════════════════════════
//  TAB SWITCHING
// ══════════════════════════════════════════════════════════════
function switchTab(name) {
    document.querySelectorAll('.tab-panel').forEach(p => p.classList.remove('active'));
    document.querySelectorAll('.nav-btn').forEach(b => b.classList.remove('active'));
    document.getElementById('tab-' + name).classList.add('active');
    document.querySelector(`[data-tab="${name}"]`).classList.add('active');
    if (name === 'browser') loadBrowserDir('source', '');
    if (name === 'output') loadOutputStats();
    if (name === 'history') loadHistory();
    if (name === 'config') loadConfig();
    if (name === 'help') loadReadme();
}

// ══════════════════════════════════════════════════════════════
//  OUTPUT PREVIEW LABEL
// ══════════════════════════════════════════════════════════════
function updateOutputPreview() {
    const name = document.getElementById('outputName').value.trim() || 'batch';
    const fmt = document.querySelector('input[name="format"]:checked')?.value || 'md';
    document.getElementById('outputPreview').textContent =
        `output/${name}_YYYYMMDD_HHMMSS/${name}_merged.${fmt}`;
}

// ══════════════════════════════════════════════════════════════
//  SOURCE FILE LIST
// ══════════════════════════════════════════════════════════════
async function refreshSourceList(path) {
    if (path !== undefined) sourceCurrentPath = path;
    const list = document.getElementById('sourceFileList');
    list.innerHTML = '<div class="loading-pulse">Loading…</div>';
    try {
        const items = await apiFetch(`/api/browse/source?path=${encodeURIComponent(sourceCurrentPath)}`);
        sourceItemsCache = items;
        filterSourceList();
        const crumb = document.getElementById('sourceBreadcrumb');
        crumb.textContent = 'source / ' + sourceCurrentPath;
    } catch (e) {
        list.innerHTML = `<div class="empty-state">Error: ${e.message}</div>`;
    }
}

function filterSourceList() {
    const q = (document.getElementById('sourceSearch')?.value || '').toLowerCase();
    const filtered = sourceItemsCache.filter(i => i.is_dir || i.name.toLowerCase().includes(q));
    renderSourceList(filtered);
}

function navBreadcrumb() {
    if (sourceCurrentPath) {
        const parts = sourceCurrentPath.split('/');
        parts.pop();
        refreshSourceList(parts.join('/'));
    }
}

function renderSourceList(items) {
    const list = document.getElementById('sourceFileList');
    if (!items.length) {
        list.innerHTML = '<div class="empty-state"><div class="empty-icon">📂</div>Empty folder.<br/>Upload JSON exports using the button above.</div>';
        updateSelectionBar();
        return;
    }
    let html = '';
    if (sourceCurrentPath) {
        const parent = sourceCurrentPath.split('/').slice(0, -1).join('/');
        html += `<div class="file-item is-dir" onclick="refreshSourceList('${escJs(parent)}')">
      <span class="file-icon">⬅</span>
      <div class="file-info"><div class="file-name">.. (up)</div></div>
    </div>`;
    }
    html += items.map(item => {
        const icon = item.is_dir ? '📁' : getFileIcon(item.ext);
        const sizeStr = item.size ? formatBytes(item.size) : '';
        const modStr = item.modified ? new Date(item.modified).toLocaleDateString() : '';
        const selected = selectedFiles.has(item.path) ? 'selected' : '';
        return `
    <div class="file-item ${selected} ${item.is_dir ? 'is-dir' : ''}"
         id="fi-${cssId(item.path)}"
         onclick="handleSourceItemClick(event,'${escJs(item.path)}',${item.is_dir})">
      <span class="file-icon">${icon}</span>
      <div class="file-info">
        <div class="file-name">${escHtml(item.name)}</div>
        <div class="file-meta">
          ${sizeStr ? `<span>${sizeStr}</span>` : ''}
          ${modStr ? `<span>${modStr}</span>` : ''}
        </div>
      </div>
      <div class="file-actions" onclick="event.stopPropagation()">
        ${!item.is_dir ? `<button class="file-action-btn" title="Preview" onclick="previewSourceFile('${escJs(item.path)}')">👁</button>` : ''}
        <button class="file-action-btn" title="Rename/Move" onclick="moveFile('source','${escJs(item.path)}')">✏️</button>
        <button class="file-action-btn" title="Delete" onclick="deleteFile('source','${escJs(item.path)}')">🗑</button>
      </div>
    </div>`;
    }).join('');
    list.innerHTML = html;
    updateSelectionBar();
}

function handleSourceItemClick(e, path, isDir) {
    if (isDir) { refreshSourceList(path); return; }
    if (selectedFiles.has(path)) selectedFiles.delete(path);
    else selectedFiles.add(path);
    document.getElementById('fi-' + cssId(path))?.classList.toggle('selected', selectedFiles.has(path));
    updateSelectionBar();
}

function updateSelectionBar() {
    const n = selectedFiles.size;
    document.getElementById('selectionCount').textContent =
        n === 0 ? 'Click files to select them' : `${n} file${n > 1 ? 's' : ''} selected`;
    const runBtn = document.getElementById('runBtn');
    runBtn.disabled = (n === 0 && !selectedZipFile);
    runBtn.title = (n === 0 && !selectedZipFile) ? 'Select at least one file first' : '';
}

function clearSelection() {
    selectedFiles.clear();
    document.querySelectorAll('#sourceFileList .file-item.selected').forEach(el => el.classList.remove('selected'));
    updateSelectionBar();
}

async function selectAll() {
    const items = await apiFetch(`/api/browse/source?path=${encodeURIComponent(sourceCurrentPath)}`);
    items.filter(i => !i.is_dir && i.ext === '.json').forEach(i => selectedFiles.add(i.path));
    renderSourceList(items);
}

async function previewSourceFile(path) {
    openModal('Preview: ' + path.split('/').pop(), '<div class="loading-pulse">Loading…</div>');
    try {
        const text = await apiFetchText(`/api/preview?base=source&path=${encodeURIComponent(path)}`);
        document.getElementById('modalBody').innerHTML =
            `<pre class="modal-pre">${escHtml(text)}</pre>`;
    } catch (e) {
        document.getElementById('modalBody').textContent = 'Error: ' + e.message;
    }
}

// ══════════════════════════════════════════════════════════════
//  FILE UPLOAD
// ══════════════════════════════════════════════════════════════
async function uploadFiles(input) {
    const files = Array.from(input.files);
    let uploaded = 0;
    for (const f of files) {
        toast(`Uploading ${f.name}…`, 'info');
        const fd = new FormData();
        fd.append('file', f);
        try {
            if (f.name.toLowerCase().endsWith('.zip')) {
                const res = await apiFetch('/api/upload-zip', { method: 'POST', body: fd });
                showZipPreview(res, f.name);
                selectedZipFile = f.name;
            } else {
                await apiFetch('/api/upload', { method: 'POST', body: fd });
                uploaded++;
            }
        } catch (e) { toast(`Upload failed: ${e.message}`, 'error'); }
    }
    if (uploaded) { toast(`Uploaded ${uploaded} file(s)`, 'success'); refreshSourceList(); }
    input.value = '';
    updateSelectionBar();
}

async function handleZipDrop(e) {
    e.preventDefault();
    document.getElementById('zipDropZone').classList.remove('drag-over');
    const f = e.dataTransfer.files[0];
    if (!f?.name.toLowerCase().endsWith('.zip')) { toast('Please drop a .zip file', 'error'); return; }
    await doZipUpload(f);
}

async function handleZipSelect(input) {
    if (!input.files[0]) return;
    await doZipUpload(input.files[0]);
}

async function doZipUpload(f) {
    const fd = new FormData();
    fd.append('file', f);
    try {
        toast(`Reading ${f.name}…`, 'info');
        const res = await apiFetch('/api/upload-zip', { method: 'POST', body: fd });
        showZipPreview(res, f.name);
        selectedZipFile = f.name;
        updateSelectionBar();
    } catch (e) { toast(`Error: ${e.message}`, 'error'); }
}

function showZipPreview(res, fname) {
    const div = document.getElementById('zipPreview');
    div.classList.remove('hidden');
    div.innerHTML = `
    <div class="zip-files-count">📦 ${escHtml(fname)} — ${res.count} JSON file(s) found</div>
    ${res.json_files.slice(0, 8).map(f => `<div class="zip-file-item">• ${escHtml(f)}</div>`).join('')}
    ${res.json_files.length > 8 ? `<div class="zip-file-item" style="opacity:.5">… and ${res.json_files.length - 8} more</div>` : ''}
    <button class="btn btn-ghost btn-xs" style="margin-top:6px" onclick="clearZip()">✕ Remove</button>`;
}

function clearZip() {
    selectedZipFile = null;
    const div = document.getElementById('zipPreview');
    div.classList.add('hidden');
    div.innerHTML = '';
    document.getElementById('zipInput').value = '';
    updateSelectionBar();
}

async function deleteFile(base, path) {
    if (!confirm(`Delete "${path}"?`)) return;
    try {
        await apiFetch(`/api/file/${base}?path=${encodeURIComponent(path)}`, { method: 'DELETE' });
        toast('Deleted', 'success');
        if (base === 'source') { selectedFiles.delete(path); refreshSourceList(); }
        else loadOutputStats();
        if (browserBase === base) loadBrowserDir(base, browserCurrentPath);
    } catch (e) { toast(`Delete failed: ${e.message}`, 'error'); }
}

async function moveFile(base, oldPath) {
    const newPath = prompt('Enter new name or relative path:', oldPath);
    if (!newPath || newPath === oldPath) return;
    try {
        await apiFetch(`/api/file/${base}/move?path=${encodeURIComponent(oldPath)}`, {
            method: 'POST',
            body: JSON.stringify({ new_path: newPath })
        });
        toast('Moved successfully', 'success');
        if (base === 'source') {
            if (selectedFiles.has(oldPath)) { selectedFiles.delete(oldPath); selectedFiles.add(newPath); }
            refreshSourceList();
        } else {
            loadOutputStats();
        }
        if (browserBase === base) loadBrowserDir(base, browserCurrentPath);
    } catch (e) { toast(`Rename/Move failed: ${e.message}`, 'error'); }
}

// ══════════════════════════════════════════════════════════════
//  MODE SELECTION
// ══════════════════════════════════════════════════════════════
function selectMode(card) {
    document.querySelectorAll('.mode-card').forEach(c => c.classList.remove('selected'));
    card.classList.add('selected');
    card.querySelector('input').checked = true;
}

function getSelectedMode() {
    return document.querySelector('.mode-card.selected')?.dataset?.mode || 'pipeline';
}

// ══════════════════════════════════════════════════════════════
//  BUILD PROCESS REQUEST
// ══════════════════════════════════════════════════════════════
function buildRequest(files) {
    const outputName = document.getElementById('outputName').value.trim() ||
        'batch_' + Date.now().toString(36);
    const mode = getSelectedMode();
    const format = document.querySelector('input[name="format"]:checked')?.value || 'md';
    const flagOverlaps = document.getElementById('optFlagOverlaps').checked;
    const verbose = document.getElementById('optVerbose').checked;
    const skipConvert = document.getElementById('optSkipConvert').checked;
    const skipPost = document.getElementById('optSkipPostprocess').checked;
    const extraRaw = document.getElementById('extraArgs').value.trim();
    const extraArgs = extraRaw ? extraRaw.split(/\s+/) : null;

    return {
        files,
        output_name: outputName,
        mode,
        format,
        flag_overlaps: flagOverlaps,
        verbose,
        skip_convert: skipConvert,
        skip_postprocess: skipPost,
        extra_args: extraArgs,
    };
}

// ══════════════════════════════════════════════════════════════
//  START PROCESS
// ══════════════════════════════════════════════════════════════
async function startProcess() {
    if (selectedFiles.size === 0 && selectedZipFile) {
        await startZipProcess();
        return;
    }
    if (!selectedFiles.size) { toast('Select at least one file first', 'error'); return; }

    const req = buildRequest([...selectedFiles]);
    const runBtn = document.getElementById('runBtn');
    runBtn.disabled = true;
    try {
        const res = await apiFetch('/api/process', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(req),
        });
        spawnJobCard(res.job_id, req.output_name, req.mode);
        toast('Pipeline started!', 'success');
    } catch (e) {
        toast(`Error: ${e.message}`, 'error');
    } finally {
        runBtn.disabled = false;
    }
}

async function startZipProcess() {
    const req = buildRequest([]);
    const runBtn = document.getElementById('runBtn');
    runBtn.disabled = true;
    try {
        const fd = new FormData();
        const zipBlob = await fetch(`/api/file/source?path=${encodeURIComponent(selectedZipFile)}`).then(r => r.blob());
        fd.append('file', zipBlob, selectedZipFile);
        const res = await apiFetch(
            `/api/process-zip?output_name=${encodeURIComponent(req.output_name)}&mode=${req.mode}`,
            { method: 'POST', body: fd }
        );
        spawnJobCard(res.job_id, `ZIP: ${selectedZipFile}`, req.mode);
        toast('ZIP processing started!', 'success');
    } catch (e) {
        toast(`Error: ${e.message}`, 'error');
    } finally {
        runBtn.disabled = false;
    }
}

// ══════════════════════════════════════════════════════════════
//  JOB CARDS & SSE
// ══════════════════════════════════════════════════════════════
function spawnJobCard(jid, name, type) {
    // Clear the empty-state placeholder if present
    const emptyEl = document.querySelector('#jobList .empty-state');
    if (emptyEl) emptyEl.remove();

    const card = document.createElement('div');
    card.className = 'job-card running';
    card.id = 'job-' + jid;
    card.innerHTML = buildJobCardHTML(jid, name, type, 'running', 'Starting…', 0, []);
    document.getElementById('jobList').prepend(card);
    updateJobCount();

    const es = new EventSource(`/api/job/${jid}/stream`);
    activeJobs.set(jid, es);

    es.onmessage = (e) => {
        const j = JSON.parse(e.data);
        refreshJobCard(jid, name, type, j);
        if (j.status === 'done' || j.status === 'error') {
            es.close();
            activeJobs.delete(jid);
            finishedJobs.add(jid);
            if (j.status === 'done') { loadOutputStats(); loadSidebarStats(); }
        }
    };
    es.onerror = () => { es.close(); };
}

function buildJobCardHTML(jid, name, type, status, message, progress, log) {
    const modeLabel = type === 'merged' ? 'Merge-Into-One' : type === 'zip' ? 'ZIP' : 'Batch Pipeline';
    return `
    <div class="job-header">
      <div class="job-status-dot ${status}"></div>
      <div class="job-name">${escHtml(name)}</div>
      <span class="job-type-badge">${escHtml(modeLabel)}</span>
      ${status === 'done' ? '<span class="job-badge-done">✓ Done</span>' : ''}
      ${status === 'error' ? '<span class="job-badge-error">✗ Error</span>' : ''}
    </div>
    <div class="job-message" id="jmsg-${jid}">${escHtml(message)}</div>
    <div class="progress-bar"><div class="progress-fill" id="jprog-${jid}" style="width:${progress}%"></div></div>
    <div class="job-log-tail" id="jlogtail-${jid}">
      ${log.slice(-4).map(l => `<div class="log-tail-line ${logCls(l)}">${escHtml(l)}</div>`).join('')}
    </div>
    <div class="job-actions" id="jactions-${jid}">
      <button class="btn btn-ghost btn-sm" onclick="showJobLog('${jid}')">📋 Full Log</button>
      ${status === 'done' ? `<button class="btn btn-primary btn-sm" onclick="showJobResult('${jid}')">📊 Results</button>` : ''}
      ${status === 'error' ? `<button class="btn btn-ghost btn-sm" onclick="showJobLog('${jid}')">🔍 Diagnose</button>` : ''}
    </div>
  `;
}

function refreshJobCard(jid, name, type, j) {
    const card = document.getElementById('job-' + jid);
    if (!card) return;
    card.className = 'job-card ' + j.status;
    card.innerHTML = buildJobCardHTML(jid, name, type, j.status, j.message, j.progress, j.log || []);
}

function logCls(l) {
    if (l.startsWith('✓') || l.includes('→ OK')) return 'success';
    if (l.startsWith('✗') || l.includes('failed')) return 'error';
    if (l.startsWith('▶')) return 'step';
    return '';
}

async function showJobLog(jid) {
    const j = await apiFetch(`/api/job/${jid}`);
    const lines = (j.log || []).map(l =>
        `<div class="log-line ${logCls(l)}">${escHtml(l)}</div>`
    ).join('');
    openModal(`Job Log — ${j.description || jid}`,
        lines || '<div class="log-line">No log output yet.</div>');
}

async function showJobResult(jid) {
    const j = await apiFetch(`/api/job/${jid}`);
    const r = j.result || {};
    let html = `
    <div class="result-banner">
      <div class="result-banner-icon">✅</div>
      <div>
        <div style="font-weight:700;font-size:15px">${escHtml(r.output_dir || '—')}</div>
        <div style="font-size:12px;color:var(--text-3);margin-top:3px">output folder</div>
      </div>
    </div>
    <div class="result-grid">
      <div class="result-item"><div class="result-label">Files Processed</div><div class="result-value">${r.files_processed || r.files_merged || 1}</div></div>
      <div class="result-item"><div class="result-label">Success / Failed</div><div class="result-value">${r.files_ok ?? '—'} / ${r.files_failed ?? 0}</div></div>
      ${r.total_messages ? `<div class="result-item"><div class="result-label">Messages Combined</div><div class="result-value">${r.total_messages.toLocaleString()}</div></div>` : ''}
      ${r.conversations ? `<div class="result-item"><div class="result-label">Conversations</div><div class="result-value">${r.conversations}</div></div>` : ''}
      ${r.total_convs ? `<div class="result-item"><div class="result-label">Total Conversations</div><div class="result-value">${r.total_convs}</div></div>` : ''}
      ${r.words ? `<div class="result-item"><div class="result-label">Words</div><div class="result-value">${Number(r.words).toLocaleString()}</div></div>` : ''}
      ${r.total_words ? `<div class="result-item"><div class="result-label">Total Words</div><div class="result-value">${Number(r.total_words).toLocaleString()}</div></div>` : ''}
      ${r.size_kb ? `<div class="result-item"><div class="result-label">File Size</div><div class="result-value">${r.size_kb} KB</div></div>` : ''}
    </div>`;

    const results = r.results || [];
    if (results.length > 0) {
        html += `<h3 style="margin:16px 0 8px;font-size:13px">Per-file Results</h3>`;
        html += results.map(f => {
            const ok = f.status === 'ok';
            return `<div class="per-file-result ${ok ? 'ok' : 'fail'}">
        <span class="per-file-icon">${ok ? '✓' : '✗'}</span>
        <div class="per-file-info">
          <div class="per-file-name">${escHtml(f.source)}</div>
          ${ok ? `<div class="per-file-stats">${f.conversations || 0} convs · ${(f.words || 0).toLocaleString()} words · ${f.size_kb || 0} KB</div>` : `<div class="per-file-err">${escHtml(f.error || '')}</div>`}
        </div>
      </div>`;
        }).join('');
    }

    html += `<div style="margin-top:16px;padding-top:12px;border-top:1px solid var(--border)">
    <button class="btn btn-ghost btn-sm" onclick="setBrowserBase('output');switchTab('browser');loadBrowserDir('output','${escJs(r.output_dir || '')}');closeModal()">
      📂 Open Output Folder →
    </button>
  </div>`;

    openModal('Results', html);
}

function clearFinishedJobs() {
    finishedJobs.forEach(jid => {
        const card = document.getElementById('job-' + jid);
        if (card) card.remove();
    });
    finishedJobs.clear();
    updateJobCount();
    if (!document.querySelector('#jobList .job-card')) {
        document.getElementById('jobList').innerHTML =
            '<div class="empty-state" style="padding:20px"><div class="empty-icon">🚀</div>No jobs yet.</div>';
    }
}

function updateJobCount() {
    const n = document.querySelectorAll('#jobList .job-card').length;
    document.getElementById('jobCountHint').textContent = n > 0 ? `${n} job${n > 1 ? 's' : ''}` : '';
}

// ══════════════════════════════════════════════════════════════
//  FILE BROWSER
// ══════════════════════════════════════════════════════════════
function setBrowserBase(base) {
    browserBase = base;
    browserCurrentPath = '';
    document.getElementById('toggleSource').classList.toggle('active', base === 'source');
    document.getElementById('toggleOutput').classList.toggle('active', base === 'output');
    loadBrowserDir(base, '');
}

async function loadBrowserDir(base, path) {
    browserCurrentPath = path;
    const list = document.getElementById('browserFileList');
    list.innerHTML = '<div class="loading-pulse">Loading…</div>';
    document.getElementById('browserBreadcrumb').textContent = base + ' / ' + path;
    const items = await apiFetch(`/api/browse/${base}?path=${encodeURIComponent(path)}`);
    browserItemsCache = items;
    filterBrowserList();
}

function filterBrowserList() {
    const q = (document.getElementById('browserSearch')?.value || '').toLowerCase();
    const filtered = browserItemsCache.filter(i => i.is_dir || i.name.toLowerCase().includes(q));
    renderBrowserList(filtered);
}

function renderBrowserList(items) {
    const list = document.getElementById('browserFileList');
    const base = browserBase;
    const path = browserCurrentPath;
    let html = '';
    if (path) {
        const parent = path.includes('/') ? path.split('/').slice(0, -1).join('/') : '';
        html += `<div class="file-item is-dir" onclick="loadBrowserDir('${base}','${parent}')">
      <span class="file-icon">⬅</span><div class="file-info"><div class="file-name">.. (up)</div></div></div>`;
    }
    html += items.map(item => `
    <div class="file-item ${item.is_dir ? 'is-dir' : ''}"
         onclick="handleBrowserClick('${base}','${escJs(item.path)}',${item.is_dir})">
      <span class="file-icon">${item.is_dir ? '📁' : getFileIcon(item.ext)}</span>
      <div class="file-info">
        <div class="file-name">${escHtml(item.name)}</div>
        <div class="file-meta">
          ${item.size ? `<span>${formatBytes(item.size)}</span>` : ''}
          ${item.modified ? `<span>${new Date(item.modified).toLocaleDateString()}</span>` : ''}
        </div>
      </div>
      <div class="file-actions" onclick="event.stopPropagation()">
        ${!item.is_dir ? `<button class="file-action-btn" title="Preview" onclick="loadBrowserPreview('${base}','${escJs(item.path)}')">👁</button>` : ''}
        <button class="file-action-btn" title="Rename/Move" onclick="moveFile('${base}','${escJs(item.path)}')">✏️</button>
        <button class="file-action-btn" title="Delete" onclick="deleteFile('${base}','${escJs(item.path)}')">🗑</button>
      </div>
    </div>`).join('');
    list.innerHTML = html || '<div class="empty-state">Empty result</div>';
}

function handleBrowserClick(base, path, isDir) {
    if (isDir) loadBrowserDir(base, path);
    else loadBrowserPreview(base, path);
}

async function loadBrowserPreview(base, path) {
    document.getElementById('previewFileName').textContent = path;
    document.getElementById('previewContent').innerHTML = '<div class="loading-pulse">Loading…</div>';
    try {
        const text = await apiFetchText(`/api/preview?base=${base}&path=${encodeURIComponent(path)}`);
        document.getElementById('previewContent').innerHTML = `<pre>${escHtml(text)}</pre>`;
    } catch (e) {
        document.getElementById('previewContent').innerHTML =
            `<div style="color:var(--danger)">Error: ${e.message}</div>`;
    }
}

// ══════════════════════════════════════════════════════════════
//  OUTPUT LIBRARY
// ══════════════════════════════════════════════════════════════
async function loadOutputStats() {
    const data = await apiFetch('/api/output/stats').catch(() => null);
    if (!data) return;
    allOutputFolders = data.folders;
    document.getElementById('statOutputs').textContent = data.total_md_files;
    document.getElementById('statConvs').textContent = data.total_conversations.toLocaleString();
    document.getElementById('outputStatsRow').innerHTML = `
    <div class="stat-card"><div class="s-num">${data.total_folders}</div><div class="s-lbl">Collections</div></div>
    <div class="stat-card"><div class="s-num">${data.total_md_files}</div><div class="s-lbl">MD Files</div></div>
    <div class="stat-card"><div class="s-num">${data.total_conversations.toLocaleString()}</div><div class="s-lbl">Conversations</div></div>
    <div class="stat-card"><div class="s-num">${(data.total_words / 1000).toFixed(0)}K</div><div class="s-lbl">Words</div></div>`;
    renderOutputFolders(data.folders);
}

function filterOutputFolders() {
    const q = document.getElementById('outputSearch').value.toLowerCase();
    renderOutputFolders(allOutputFolders.filter(f => f.name.toLowerCase().includes(q)));
}

function renderOutputFolders(folders) {
    const grid = document.getElementById('outputFolderList');
    if (!folders.length) {
        grid.innerHTML = '<div class="empty-state" style="grid-column:1/-1"><div class="empty-icon">📭</div>No output folders yet. Run a pipeline first!</div>';
        return;
    }
    grid.innerHTML = folders.map(f => `
    <div class="output-folder-card"
         onclick="setBrowserBase('output');switchTab('browser');loadBrowserDir('output','${escJs(f.path)}')">
      <div class="of-name">📁 ${escHtml(f.name)}</div>
      <div style="font-size:11px;color:var(--text-3);margin-top:2px">${new Date(f.modified).toLocaleDateString()}</div>
      <div class="of-meta">
        <span class="of-tag">${f.md_count} file${f.md_count !== 1 ? 's' : ''}</span>
        ${f.conversations ? `<span class="of-tag green">${f.conversations} convs</span>` : ''}
        ${f.words ? `<span class="of-tag">${(f.words / 1000).toFixed(0)}K words</span>` : ''}
        ${f.size_kb ? `<span class="of-tag">${f.size_kb} KB</span>` : ''}
      </div>
    </div>`).join('');
}

// ══════════════════════════════════════════════════════════════
//  HISTORY
// ══════════════════════════════════════════════════════════════
async function loadHistory() {
    const records = await apiFetch('/api/history').catch(() => []);
    const list = document.getElementById('historyList');
    if (!records.length) {
        list.innerHTML = '<div class="empty-state"><div class="empty-icon">🕒</div>No history yet. Run a pipeline first!</div>';
        return;
    }
    list.innerHTML = records.map(r => {
        const icon = r.type === 'merged_batch' ? '🔗' : r.type === 'zip' ? '📦' : '📋';
        const time = new Date(r.timestamp).toLocaleString();
        const agg = r.stats || {};
        const convs = agg.conversations || (r.results || []).reduce((a, x) => a + (x.conversations || 0), 0);
        const words = agg.words || (r.results || []).reduce((a, x) => a + (x.words || 0), 0);
        return `
    <div class="history-card">
      <div class="history-icon">${icon}</div>
      <div class="history-info">
        <div class="history-title">${escHtml(r.description || r.id)}</div>
        <div class="history-meta">
          <span>🕒 ${time}</span>
          <span>📁 ${escHtml(r.output_dir || '—')}</span>
          ${convs ? `<span>💬 ${convs} convs</span>` : ''}
          ${words ? `<span>📝 ${Number(words).toLocaleString()} words</span>` : ''}
        </div>
        <div class="history-files">
          ${(r.files || []).slice(0, 5).map(f => `<span class="history-file-tag">${escHtml(f)}</span>`).join('')}
          ${(r.files || []).length > 5 ? `<span class="history-file-tag">+${r.files.length - 5} more</span>` : ''}
        </div>
      </div>
      <button class="btn btn-ghost btn-sm"
        onclick="setBrowserBase('output');switchTab('browser');loadBrowserDir('output','${escJs(r.output_dir || '')}')">
        Open →
      </button>
    </div>`;
    }).join('');
}

async function clearHistory() {
    if (!confirm('Clear all history? This cannot be undone.')) return;
    await apiFetch('/api/history', { method: 'DELETE' });
    toast('History cleared', 'success');
    loadHistory();
}

// ══════════════════════════════════════════════════════════════
//  SIDEBAR STATS
// ══════════════════════════════════════════════════════════════
async function loadSidebarStats() {
    const items = await apiFetch('/api/browse/source').catch(() => []);
    document.getElementById('statSources').textContent = items.filter(i => i.ext === '.json').length;
}

// ══════════════════════════════════════════════════════════════
//  CONFIG
// ══════════════════════════════════════════════════════════════
async function loadConfig() {
    const text = await apiFetchText('/api/config').catch(() => '');
    document.getElementById('configEditor').value = text;
}

async function saveConfig() {
    const text = document.getElementById('configEditor').value;
    await apiFetch('/api/config', { method: 'PUT', body: text });
    toast('Config saved!', 'success');
}

// ══════════════════════════════════════════════════════════════
//  HELP / README
// ══════════════════════════════════════════════════════════════
let readmeLoaded = false;
async function loadReadme() {
    if (readmeLoaded) return;
    try {
        const text = await apiFetchText('/api/readme');
        // Simple markdown → HTML renderer (headings, code, bold, lists)
        const html = mdToHtml(text);
        document.getElementById('readmeContent').innerHTML = html;
        readmeLoaded = true;
    } catch (e) {
        document.getElementById('readmeContent').textContent = 'Could not load README: ' + e.message;
    }
}

function mdToHtml(md) {
    let html = escHtml(md);
    // code blocks
    html = html.replace(/```[\w]*\n([\s\S]*?)```/g, (_, code) =>
        `<pre class="md-code">${code}</pre>`);
    // inline code
    html = html.replace(/`([^`]+)`/g, '<code class="md-inline-code">$1</code>');
    // headings
    html = html.replace(/^### (.+)$/gm, '<h3 class="md-h3">$1</h3>');
    html = html.replace(/^## (.+)$/gm, '<h2 class="md-h2">$1</h2>');
    html = html.replace(/^# (.+)$/gm, '<h1 class="md-h1">$1</h1>');
    // bold
    html = html.replace(/\*\*([^*]+)\*\*/g, '<strong>$1</strong>');
    // links
    html = html.replace(/\[([^\]]+)\]\(([^)]+)\)/g,
        '<a href="$2" target="_blank" rel="noreferrer">$1</a>');
    // horizontal rules
    html = html.replace(/^---+$/gm, '<hr class="md-hr"/>');
    // paragraphs
    html = html.replace(/\n\n/g, '</p><p class="md-p">');
    html = '<p class="md-p">' + html + '</p>';
    // clean up p tags around block elements
    html = html.replace(/<p class="md-p">\s*(<h[123]|<pre|<hr)/g, '$1');
    html = html.replace(/(<\/h[123]>|<\/pre>|<hr[^>]*\/>)\s*<\/p>/g, '$1');
    return html;
}

// ══════════════════════════════════════════════════════════════
//  MODAL
// ══════════════════════════════════════════════════════════════
function openModal(title, bodyHTML) {
    document.getElementById('modalTitle').textContent = title;
    document.getElementById('modalBody').innerHTML = bodyHTML;
    document.getElementById('modalOverlay').classList.remove('hidden');
}
function closeModal() {
    document.getElementById('modalOverlay').classList.add('hidden');
}

// ══════════════════════════════════════════════════════════════
//  TOAST
// ══════════════════════════════════════════════════════════════
function toast(msg, type = 'info') {
    const el = document.createElement('div');
    el.className = `toast ${type}`;
    el.textContent = msg;
    document.getElementById('toastContainer').appendChild(el);
    setTimeout(() => el.remove(), 4000);
}

// ══════════════════════════════════════════════════════════════
//  API HELPERS
// ══════════════════════════════════════════════════════════════
async function apiFetch(url, opts = {}) {
    const res = await fetch(API + url, opts);
    if (!res.ok) {
        const err = await res.text().catch(() => res.statusText);
        throw new Error(err);
    }
    return res.json();
}

async function apiFetchText(url, opts = {}) {
    const res = await fetch(API + url, opts);
    if (!res.ok) throw new Error(res.statusText);
    return res.text();
}

// ══════════════════════════════════════════════════════════════
//  UTILS
// ══════════════════════════════════════════════════════════════
function formatBytes(n) {
    if (n < 1024) return n + ' B';
    if (n < 1024 * 1024) return (n / 1024).toFixed(1) + ' KB';
    return (n / 1024 / 1024).toFixed(1) + ' MB';
}

function getFileIcon(ext) {
    const map = {
        '.json': '📋', '.md': '📝', '.mdx': '📝', '.zip': '📦',
        '.txt': '📃', '.yaml': '⚙️', '.yml': '⚙️'
    };
    return map[ext] || '📄';
}

function escHtml(s) {
    return String(s || '')
        .replace(/&/g, '&amp;').replace(/</g, '&lt;')
        .replace(/>/g, '&gt;').replace(/"/g, '&quot;');
}

function escJs(s) {
    return String(s || '').replace(/\\/g, '\\\\').replace(/'/g, "\\'");
}

function cssId(s) {
    return s.replace(/[^a-zA-Z0-9_-]/g, '_');
}
