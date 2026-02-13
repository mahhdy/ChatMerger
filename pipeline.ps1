# ============================================================
#  Full Pipeline: Convert -> Merge -> Post-Process
# ============================================================
#
#  Usage:
#    .\pipeline.ps1 <input_file> [output_name]
#
#  Examples:
#    .\pipeline.ps1 my_chat_export.json
#    .\pipeline.ps1 my_chat_export.json my_document
#    .\pipeline.ps1 chatgpt_conversations.json paper
#
#  The pipeline:
#    1. Convert (if needed) -> standard JSON
#    2. Merge segments      -> raw markdown
#    3. Post-process         -> clean markdown + TOC
#    4. Extract code blocks  -> separate files
#    5. Validate             -> check for issues
# ============================================================

param(
    [Parameter(Mandatory=$true, Position=0)]
    [string]$InputFile,

    [Parameter(Position=1)]
    [string]$OutputName = ""
)

$projectRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $projectRoot

# Activate venv
& "$projectRoot\venv\Scripts\Activate.ps1"

# Determine output name
if (-not $OutputName) {
    $OutputName = [System.IO.Path]::GetFileNameWithoutExtension($InputFile)
}

$timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
$outputDir = "output\${OutputName}_${timestamp}"
New-Item -ItemType Directory -Force -Path $outputDir | Out-Null

Write-Host ""
Write-Host "================================================" -ForegroundColor Cyan
Write-Host "  Chat Merger Pipeline" -ForegroundColor Cyan
Write-Host "================================================" -ForegroundColor Cyan
Write-Host "  Input:  $InputFile" -ForegroundColor White
Write-Host "  Output: $outputDir\" -ForegroundColor White
Write-Host "================================================" -ForegroundColor Cyan
Write-Host ""

# Step 1: Convert if needed
Write-Host "[1/5] Converting format..." -ForegroundColor Yellow
$convertedFile = "$outputDir\01_converted.json"
python convert_export.py $InputFile -o $convertedFile --stats
if ($LASTEXITCODE -ne 0) {
    Write-Host "  Conversion failed. Trying direct merge..." -ForegroundColor Yellow
    $convertedFile = $InputFile
}
Write-Host ""

# Step 2: Merge
Write-Host "[2/5] Merging segments..." -ForegroundColor Yellow
$mergedFile = "$outputDir\02_merged_raw.md"
python chat_merger.py $convertedFile -o $mergedFile --flag-overlaps -v
if ($LASTEXITCODE -ne 0) {
    Write-Host "  ERROR: Merge failed!" -ForegroundColor Red
    exit 1
}
Write-Host ""

# Step 3: Post-process
Write-Host "[3/5] Post-processing..." -ForegroundColor Yellow
$cleanFile = "$outputDir\03_${OutputName}_final.md"
Copy-Item $mergedFile $cleanFile
python post_process.py $cleanFile --all
Write-Host ""

# Step 4: Extract code blocks
Write-Host "[4/5] Extracting code blocks..." -ForegroundColor Yellow
$codeDir = "$outputDir\code_blocks"
python post_process.py $cleanFile --extract-code $codeDir -o $cleanFile
Write-Host ""

# Step 5: Validate
Write-Host "[5/5] Validating..." -ForegroundColor Yellow
python post_process.py $cleanFile --validate --review
Write-Host ""

# Summary
Write-Host "================================================" -ForegroundColor Green
Write-Host "  Pipeline Complete!" -ForegroundColor Green
Write-Host "================================================" -ForegroundColor Green
Write-Host ""
Write-Host "  Output files:" -ForegroundColor White

Get-ChildItem $outputDir -Recurse -File | ForEach-Object {
    $relativePath = $_.FullName.Replace("$projectRoot\", "")
    $size = if ($_.Length -gt 1024) {
        "$([math]::Round($_.Length / 1024, 1)) KB"
    } else {
        "$($_.Length) bytes"
    }
    Write-Host "    $relativePath ($size)" -ForegroundColor Gray
}

Write-Host ""
Write-Host "  Main output: $cleanFile" -ForegroundColor Green
Write-Host ""

# Open in default editor if available
$openChoice = Read-Host "Open output file? (y/n)"
if ($openChoice -eq 'y') {
    if (Get-Command code -ErrorAction SilentlyContinue) {
        code $cleanFile
    } else {
        Start-Process notepad $cleanFile
    }
}
