/* ============================================================
   ChatMerger UI — App Logic
   ============================================================ */

const API = '';   // same origin

// ── State ──────────────────────────────────────────────────
let sourceCurrentPath = '';
let browserCurrentPath = '';
let browserBase = 'source';
let selectedFiles = new Set();   // relative paths in source
let activeJobs = new Map();      // jid → EventSource
let allOutputFolders = [];
let selectedZipFile = null;

// ── Bootstrap ──────────────────────────────────────────────
document.addEventListener('DOMContentLoaded', () => {
    refreshSourceList();
    loadSidebarStats();
    setupModeCards();
    loadHistory();
    loadConfig();
    loadOutputStats();
    setInterval(loadSidebarStats, 30000);
});

// ── Tab switching ──────────────────────────────────────────
function switchTab(name) {
    document.querySelectorAll('.tab-panel').forEach(p => p.classList.remove('active'));
    document.querySelectorAll('.nav-btn').forEach(b => b.classList.remove('active'));
    document.getElementById('tab-' + name).classList.add('active');
    document.querySelector(`[data-tab="${name}"]`).classList.add('active');
    if (name === 'browser') { loadBrowserDir('source', ''); }
    if (name === 'output') { loadOutputStats(); }
    if (name === 'history') { loadHistory(); }
    if (name === 'config') { loadConfig(); }
}

// ══════════════════════════════════════════════════════════
//  SOURCE FILE LIST
// ══════════════════════════════════════════════════════════
async function refreshSourceList(path) {
    if (path !== undefined) sourceCurrentPath = path;
    const list = document.getElementById('sourceFileList');
    list.innerHTML = '<div class="loading-pulse">Loading…</div>';

    try {
        const items = await apiFetch(`/api/browse/source?path=${encodeURIComponent(sourceCurrentPath)}`);
        renderSourceList(items);
        document.getElementById('sourceBreadcrumb').textContent =
            'source / ' + (sourceCurrentPath || '');
        document.getElementById('sourceBreadcrumb').onclick = () => {
            if (sourceCurrentPath) {
                const parts = sourceCurrentPath.split('/');
                parts.pop();
                refreshSourceList(parts.join('/'));
            }
        };
    } catch (e) {
        list.innerHTML = `<div class="empty-state">Error: ${e.message}</div>`;
    }
}

function renderSourceList(items) {
    const list = document.getElementById('sourceFileList');
    if (!items.length) {
        list.innerHTML = '<div class="empty-state"><div class="empty-icon">📂</div>No files here. Upload some JSON exports!</div>';
        updateSelectionBar();
        return;
    }

    list.innerHTML = items.map(item => {
        const icon = item.is_dir ? '📁' : getFileIcon(item.ext);
        const sizeStr = item.size ? formatBytes(item.size) : '';
        const modStr = item.modified ? new Date(item.modified).toLocaleDateString() : '';
        const isSelected = selectedFiles.has(item.path);
        const selClass = isSelected ? 'selected' : '';
        return `
    <div class="file-item ${selClass} ${item.is_dir ? 'is-dir' : ''}"
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
        ${!item.is_dir ? `<button class="file-action-btn" onclick="previewSourceFile('${escJs(item.path)}')">👁</button>` : ''}
        <button class="file-action-btn" onclick="deleteFile('source','${escJs(item.path)}')">🗑</button>
      </div>
    </div>`;
    }).join('');

    updateSelectionBar();
}

function handleSourceItemClick(e, path, isDir) {
    if (isDir) {
        refreshSourceList(path);
        return;
    }
    // toggle selection
    if (selectedFiles.has(path)) {
        selectedFiles.delete(path);
    } else {
        selectedFiles.add(path);
    }
    document.getElementById('fi-' + cssId(path))?.classList.toggle('selected', selectedFiles.has(path));
    updateSelectionBar();
}

function updateSelectionBar() {
    const n = selectedFiles.size;
    document.getElementById('selectionCount').textContent =
        n === 0 ? 'No files selected' : `${n} file${n > 1 ? 's' : ''} selected`;
    document.getElementById('runBtn').disabled = (n === 0 && !selectedZipFile);
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
            `<pre style="white-space:pre-wrap;font-family:var(--font-mono);font-size:12px;color:var(--text-2)">${escHtml(text)}</pre>`;
    } catch (e) { document.getElementById('modalBody').innerHTML = `Error: ${e.message}`; }
}

// ══════════════════════════════════════════════════════════
//  FILE UPLOAD
// ══════════════════════════════════════════════════════════
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
    if (!f || !f.name.toLowerCase().endsWith('.zip')) { toast('Please drop a .zip file', 'error'); return; }
    const fd = new FormData();
    fd.append('file', f);
    try {
        toast(`Extracting ${f.name}…`, 'info');
        const res = await apiFetch('/api/upload-zip', { method: 'POST', body: fd });
        showZipPreview(res, f.name);
        selectedZipFile = f.name;
        updateSelectionBar();
    } catch (e) { toast(`Error: ${e.message}`, 'error'); }
}

async function handleZipSelect(input) {
    if (!input.files[0]) return;
    const f = input.files[0];
    const fd = new FormData();
    fd.append('file', f);
    try {
        toast('Reading ZIP…', 'info');
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
    <div class="zip-files-count">📦 ${fname} — ${res.count} JSON file(s) found</div>
    ${res.json_files.slice(0, 8).map(f => `<div class="zip-file-item">• ${escHtml(f)}</div>`).join('')}
    ${res.json_files.length > 8 ? `<div class="zip-file-item" style="opacity:.5">… and ${res.json_files.length - 8} more</div>` : ''}
  `;
}

async function deleteFile(base, path) {
    if (!confirm(`Delete ${path}?`)) return;
    try {
        await apiFetch(`/api/file/${base}?path=${encodeURIComponent(path)}`, { method: 'DELETE' });
        toast('Deleted', 'success');
        if (base === 'source') { selectedFiles.delete(path); refreshSourceList(); }
        else loadOutputStats();
    } catch (e) { toast(`Delete failed: ${e.message}`, 'error'); }
}

// ══════════════════════════════════════════════════════════
//  MODE CARDS
// ══════════════════════════════════════════════════════════
function setupModeCards() {
    document.querySelectorAll('.mode-card').forEach(card => {
        card.addEventListener('click', () => {
            document.querySelectorAll('.mode-card').forEach(c => c.classList.remove('selected'));
            card.classList.add('selected');
            card.querySelector('input').checked = true;
        });
    });
}

function getSelectedMode() {
    return document.querySelector('.mode-card.selected')?.dataset?.mode || 'pipeline';
}

// ══════════════════════════════════════════════════════════
//  START PROCESS
// ══════════════════════════════════════════════════════════
async function startProcess() {
    const outputName = document.getElementById('outputName').value.trim() ||
        ('batch_' + Date.now().toString(36));
    const mode = getSelectedMode();
    const extraRaw = document.getElementById('extraArgs').value.trim();
    const extra = extraRaw ? extraRaw.split(/\s+/) : null;

    if (selectedFiles.size === 0 && selectedZipFile) {
        // ZIP mode
        startZipProcess(outputName, mode, selectedZipFile);
        return;
    }

    if (!selectedFiles.size) { toast('Select at least one file', 'error'); return; }

    try {
        document.getElementById('runBtn').disabled = true;
        const body = { files: [...selectedFiles], output_name: outputName, mode, extra_args: extra };
        const res = await apiFetch('/api/process', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(body),
        });
        spawnJobCard(res.job_id, outputName, mode);
        toast('Pipeline started!', 'success');
    } catch (e) {
        toast(`Error: ${e.message}`, 'error');
    } finally {
        document.getElementById('runBtn').disabled = false;
    }
}

async function startZipProcess(outputName, mode, zipFile) {
    try {
        document.getElementById('runBtn').disabled = true;
        const fd = new FormData();
        const zipBlob = await fetch(`/api/file/source?path=${encodeURIComponent(zipFile)}`).then(r => r.blob());
        fd.append('file', zipBlob, zipFile);
        const res = await apiFetch(
            `/api/process-zip?output_name=${encodeURIComponent(outputName)}&mode=${mode}`,
            { method: 'POST', body: fd }
        );
        spawnJobCard(res.job_id, `ZIP: ${zipFile}`, mode);
        toast('ZIP processing started!', 'success');
    } catch (e) {
        toast(`Error: ${e.message}`, 'error');
    } finally {
        document.getElementById('runBtn').disabled = false;
    }
}

// ══════════════════════════════════════════════════════════
//  JOB CARDS + SSE
// ══════════════════════════════════════════════════════════
function spawnJobCard(jid, name, type) {
    const card = document.createElement('div');
    card.className = 'job-card running';
    card.id = 'job-' + jid;
    card.innerHTML = jobCardHTML(jid, name, type, { status: 'running', progress: 0, message: 'Starting…', log: [] });
    document.getElementById('jobList').prepend(card);

    const es = new EventSource(`/api/job/${jid}/stream`);
    activeJobs.set(jid, es);
    es.onmessage = (e) => {
        const j = JSON.parse(e.data);
        updateJobCard(jid, j);
        if (j.status === 'done' || j.status === 'error') {
            es.close();
            activeJobs.delete(jid);
            if (j.status === 'done') { loadOutputStats(); loadSidebarStats(); }
        }
    };
    es.onerror = () => { es.close(); };
}

function jobCardHTML(jid, name, type, j) {
    return `
    <div class="job-header">
      <div class="job-status-dot ${j.status}"></div>
      <div class="job-name">${escHtml(name)}</div>
      <span class="job-type-badge">${type}</span>
    </div>
    <div class="job-message" id="jmsg-${jid}">${escHtml(j.message)}</div>
    <div class="progress-bar"><div class="progress-fill" id="jprog-${jid}" style="width:${j.progress}%"></div></div>
    <div class="job-actions">
      <button class="btn btn-ghost btn-sm" onclick="showJobLog('${jid}')">📋 Log</button>
      ${j.status === 'done' ? `<button class="btn btn-ghost btn-sm" onclick="showJobResult('${jid}')">📊 Results</button>` : ''}
    </div>
  `;
}

function updateJobCard(jid, j) {
    const card = document.getElementById('job-' + jid);
    if (!card) return;
    card.className = 'job-card ' + j.status;
    const dot = card.querySelector('.job-status-dot');
    if (dot) dot.className = 'job-status-dot ' + j.status;
    const msg = document.getElementById('jmsg-' + jid);
    if (msg) msg.textContent = j.message;
    const prog = document.getElementById('jprog-' + jid);
    if (prog) prog.style.width = j.progress + '%';
    // refresh action buttons
    const actions = card.querySelector('.job-actions');
    if (actions) {
        actions.innerHTML = `
      <button class="btn btn-ghost btn-sm" onclick="showJobLog('${jid}')">📋 Log</button>
      ${j.status === 'done' ? `<button class="btn btn-ghost btn-sm" onclick="showJobResult('${jid}')">📊 Results</button>` : ''}
      ${j.status === 'error' ? `<span style="color:var(--danger);font-size:12px">${escHtml(j.message)}</span>` : ''}
    `;
    }
}

async function showJobLog(jid) {
    const j = await apiFetch(`/api/job/${jid}`);
    const lines = j.log.map(l => {
        const cls = l.startsWith('✓') ? 'success' : l.startsWith('✗') ? 'error' : '';
        return `<div class="log-line ${cls}">${escHtml(l)}</div>`;
    }).join('');
    openModal(`Job Log — ${jid}`, lines || '<div class="log-line">No log output yet.</div>');
}

async function showJobResult(jid) {
    const j = await apiFetch(`/api/job/${jid}`);
    const r = j.result || {};
    let html = `<div class="result-grid">
    <div class="result-item"><div class="result-label">Output Folder</div><div class="result-value" style="font-size:13px;word-break:break-all">${escHtml(r.output_dir || '—')}</div></div>
    <div class="result-item"><div class="result-label">Files Processed</div><div class="result-value">${r.files_processed || r.files_merged || 1}</div></div>
    ${r.total_messages ? `<div class="result-item"><div class="result-label">Total Messages</div><div class="result-value">${r.total_messages}</div></div>` : ''}
    ${r.conversations ? `<div class="result-item"><div class="result-label">Conversations</div><div class="result-value">${r.conversations}</div></div>` : ''}
    ${r.words ? `<div class="result-item"><div class="result-label">Words</div><div class="result-value">${Number(r.words).toLocaleString()}</div></div>` : ''}
    ${r.size_kb ? `<div class="result-item"><div class="result-label">Output Size</div><div class="result-value">${r.size_kb} KB</div></div>` : ''}
  </div>`;
    if (r.results && r.results.length > 1) {
        html += '<h3 style="margin-top:16px;font-size:13px;margin-bottom:8px">Per-file Results</h3>';
        html += r.results.map(f => `
      <div style="background:var(--bg-input);border-radius:8px;padding:10px;margin-bottom:8px;font-size:12px">
        <b>${escHtml(f.source)}</b> → ${f.conversations || 0} convs, ${(f.words || 0).toLocaleString()} words, ${f.size_kb || 0} KB
      </div>`).join('');
    }
    openModal('Results', html);
}

// ══════════════════════════════════════════════════════════
//  FILE BROWSER TAB
// ══════════════════════════════════════════════════════════
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

    // Back button
    let html = '';
    if (path) {
        html += `<div class="file-item" onclick="loadBrowserDir('${base}','${path.includes('/') ? path.split('/').slice(0, -1).join('/') : ''}')">
      <span class="file-icon">⬅</span><div class="file-info"><div class="file-name">.. (up)</div></div></div>`;
    }
    html += items.map(item => `
    <div class="file-item" onclick="handleBrowserClick('${base}','${escJs(item.path)}',${item.is_dir})">
      <span class="file-icon">${item.is_dir ? '📁' : getFileIcon(item.ext)}</span>
      <div class="file-info">
        <div class="file-name">${escHtml(item.name)}</div>
        <div class="file-meta">
          ${item.size ? `<span>${formatBytes(item.size)}</span>` : ''}
          ${item.modified ? `<span>${new Date(item.modified).toLocaleDateString()}</span>` : ''}
        </div>
      </div>
      <div class="file-actions" onclick="event.stopPropagation()">
        ${!item.is_dir ? `<button class="file-action-btn" onclick="loadBrowserPreview('${base}','${escJs(item.path)}')">👁</button>` : ''}
        <button class="file-action-btn" onclick="deleteFile('${base}','${escJs(item.path)}')">🗑</button>
      </div>
    </div>`).join('');

    list.innerHTML = html || '<div class="empty-state">Empty folder</div>';
}

function handleBrowserClick(base, path, isDir) {
    if (isDir) { loadBrowserDir(base, path); }
    else { loadBrowserPreview(base, path); }
}

async function loadBrowserPreview(base, path) {
    document.getElementById('previewFileName').textContent = path;
    document.getElementById('previewContent').innerHTML = '<div class="loading-pulse">Loading…</div>';
    try {
        const text = await apiFetchText(`/api/preview?base=${base}&path=${encodeURIComponent(path)}`);
        document.getElementById('previewContent').innerHTML =
            `<pre>${escHtml(text)}</pre>`;
    } catch (e) {
        document.getElementById('previewContent').innerHTML = `<div style="color:var(--danger)">Error: ${e.message}</div>`;
    }
}

// ══════════════════════════════════════════════════════════
//  OUTPUT LIBRARY
// ══════════════════════════════════════════════════════════
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
    <div class="stat-card"><div class="s-num">${(data.total_words / 1000).toFixed(0)}K</div><div class="s-lbl">Words</div></div>
  `;
    renderOutputFolders(data.folders);
}

function filterOutputFolders() {
    const q = document.getElementById('outputSearch').value.toLowerCase();
    renderOutputFolders(allOutputFolders.filter(f => f.name.toLowerCase().includes(q)));
}

function renderOutputFolders(folders) {
    const grid = document.getElementById('outputFolderList');
    if (!folders.length) {
        grid.innerHTML = '<div class="empty-state"><div class="empty-icon">📭</div>No output folders yet.</div>';
        return;
    }
    grid.innerHTML = folders.map(f => `
    <div class="output-folder-card" onclick="setBrowserBase('output');switchTab('browser');loadBrowserDir('output','${escJs(f.path)}')">
      <div class="of-name">📁 ${escHtml(f.name)}</div>
      <div style="font-size:11px;color:var(--text-3)">${new Date(f.modified).toLocaleDateString()}</div>
      <div class="of-meta">
        <span class="of-tag">${f.md_count} files</span>
        ${f.conversations ? `<span class="of-tag green">${f.conversations} convs</span>` : ''}
        ${f.words ? `<span class="of-tag">${(f.words / 1000).toFixed(0)}K words</span>` : ''}
        ${f.size_kb ? `<span class="of-tag">${f.size_kb} KB</span>` : ''}
      </div>
    </div>`).join('');
}

// ══════════════════════════════════════════════════════════
//  HISTORY TAB
// ══════════════════════════════════════════════════════════
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
        const stats = r.stats || (r.results && r.results[0]) || {};
        return `
    <div class="history-card">
      <div class="history-icon">${icon}</div>
      <div class="history-info">
        <div class="history-title">${escHtml(r.description || r.id)}</div>
        <div class="history-meta">
          <span>🕒 ${time}</span>
          <span>📁 ${escHtml(r.output_dir || '—')}</span>
          ${stats.conversations ? `<span>💬 ${stats.conversations} convs</span>` : ''}
          ${stats.words ? `<span>📝 ${Number(stats.words).toLocaleString()} words</span>` : ''}
        </div>
        <div class="history-files">
          ${(r.files || []).slice(0, 6).map(f => `<span class="history-file-tag">${escHtml(f)}</span>`).join('')}
          ${(r.files || []).length > 6 ? `<span class="history-file-tag">+${r.files.length - 6} more</span>` : ''}
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
    if (!confirm('Clear all history?')) return;
    await apiFetch('/api/history', { method: 'DELETE' });
    toast('History cleared', 'success');
    loadHistory();
}

// ══════════════════════════════════════════════════════════
//  SIDEBAR STATS
// ══════════════════════════════════════════════════════════
async function loadSidebarStats() {
    const items = await apiFetch('/api/browse/source').catch(() => []);
    const jsons = items.filter(i => i.ext === '.json' || i.is_dir);
    document.getElementById('statSources').textContent = jsons.length;
}

// ══════════════════════════════════════════════════════════
//  CONFIG
// ══════════════════════════════════════════════════════════
async function loadConfig() {
    const text = await apiFetchText('/api/config').catch(() => '');
    document.getElementById('configEditor').value = text;
}

async function saveConfig() {
    const text = document.getElementById('configEditor').value;
    await apiFetch('/api/config', { method: 'PUT', body: text });
    toast('Config saved!', 'success');
}

// ══════════════════════════════════════════════════════════
//  MODAL
// ══════════════════════════════════════════════════════════
function openModal(title, bodyHTML) {
    document.getElementById('modalTitle').textContent = title;
    document.getElementById('modalBody').innerHTML = bodyHTML;
    document.getElementById('modalOverlay').classList.remove('hidden');
}
function closeModal() {
    document.getElementById('modalOverlay').classList.add('hidden');
}

// ══════════════════════════════════════════════════════════
//  TOAST
// ══════════════════════════════════════════════════════════
function toast(msg, type = 'info') {
    const el = document.createElement('div');
    el.className = `toast ${type}`;
    el.textContent = msg;
    document.getElementById('toastContainer').appendChild(el);
    setTimeout(() => el.remove(), 3500);
}

// ══════════════════════════════════════════════════════════
//  HELPERS
// ══════════════════════════════════════════════════════════
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

function formatBytes(n) {
    if (n < 1024) return n + ' B';
    if (n < 1024 * 1024) return (n / 1024).toFixed(1) + ' KB';
    return (n / 1024 / 1024).toFixed(1) + ' MB';
}

function getFileIcon(ext) {
    if (!ext) return '📄';
    const map = { '.json': '📋', '.md': '📝', '.mdx': '📝', '.zip': '📦', '.txt': '📃', '.yaml': '⚙️', '.yml': '⚙️' };
    return map[ext] || '📄';
}

function escHtml(s) {
    return String(s || '').replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;').replace(/"/g, '&quot;');
}

function escJs(s) {
    return String(s || '').replace(/\\/g, '\\\\').replace(/'/g, "\\'");
}

function cssId(s) {
    return s.replace(/[^a-zA-Z0-9_-]/g, '_');
}
