# Quick test script
$projectRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $projectRoot
& "$projectRoot\venv\Scripts\Activate.ps1"

Write-Host "Running all tests..." -ForegroundColor Cyan
python tests\test_basic.py

Write-Host ""
Write-Host "Running sample tests..." -ForegroundColor Cyan
python chat_merger.py samples\test_chat.json -o output\test_en.md --flag-overlaps
python chat_merger.py samples\test_farsi_chat.json -o output\test_fa.md --flag-overlaps

Write-Host ""
Write-Host "Output files:" -ForegroundColor Green
Get-ChildItem output\*.md | ForEach-Object {
    Write-Host "  $($_.Name) - $($_.Length) bytes" -ForegroundColor White
}
