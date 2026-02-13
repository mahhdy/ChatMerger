# Quick run script for Chat Merger Tool
# Usage: .\run.ps1 <input.json> [options]
#
# Examples:
#   .\run.ps1 my_chat.json
#   .\run.ps1 my_chat.json -o result.md
#   .\run.ps1 my_chat.json --interactive
#   .\run.ps1 my_chat.json --flag-overlaps

param(
    [Parameter(Mandatory=$true, Position=0)]
    [string]$InputFile,

    [Parameter(ValueFromRemainingArguments=$true)]
    [string[]]$ExtraArgs
)

$projectRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $projectRoot

# Activate venv
& "$projectRoot\venv\Scripts\Activate.ps1"

# Run
$allArgs = @($InputFile) + $ExtraArgs
python chat_merger.py @allArgs
