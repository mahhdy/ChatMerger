# ============================================================
#  ChatMerger UI — Launcher
#  Usage:  .\launch_ui.ps1
# ============================================================
param(
    [int]$Port = 8765,
    [switch]$NoBrowser
)

$projectRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $projectRoot

Write-Host ""
Write-Host "================================================" -ForegroundColor Cyan
Write-Host "  ChatMerger Web UI v2.0" -ForegroundColor Cyan
Write-Host "================================================" -ForegroundColor Cyan
Write-Host ""

# Activate venv
$venvActivate = "$projectRoot\venv\Scripts\Activate.ps1"
if (Test-Path $venvActivate) {
    & $venvActivate
} else {
    Write-Host "  WARNING: venv not found at $venvActivate" -ForegroundColor Yellow
}

# Check dependencies
Write-Host "  Checking dependencies..." -ForegroundColor Gray
$checkResult = python -c "import fastapi, uvicorn, aiofiles" 2>&1
if ($LASTEXITCODE -ne 0) {
    Write-Host "  Installing UI dependencies..." -ForegroundColor Yellow
    pip install fastapi "uvicorn[standard]" python-multipart aiofiles --quiet
}

# Create required directories
New-Item -ItemType Directory -Force -Path "$projectRoot\ui\static" | Out-Null
New-Item -ItemType Directory -Force -Path "$projectRoot\source"    | Out-Null

Write-Host ""
Write-Host "  Server:  http://127.0.0.1:$Port" -ForegroundColor Green
Write-Host "  Source:  $projectRoot\source"    -ForegroundColor White
Write-Host "  Output:  $projectRoot\output"    -ForegroundColor White
Write-Host ""
Write-Host "  Press Ctrl+C to stop." -ForegroundColor Gray
Write-Host ""

# Open browser after short delay
if (-not $NoBrowser) {
    Start-Job {
        Start-Sleep 2
        Start-Process "http://127.0.0.1:$using:Port"
    } | Out-Null
}

# Start server
python -m uvicorn ui.server:app --host 127.0.0.1 --port $Port --app-dir "$projectRoot"
