# Clean output files
$projectRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $projectRoot

Write-Host "Cleaning output files..." -ForegroundColor Yellow
Remove-Item output\*.md -Force -ErrorAction SilentlyContinue
Remove-Item output\*.mdx -Force -ErrorAction SilentlyContinue
Write-Host "Done." -ForegroundColor Green
