# This PowerShell script guides you through connecting your EXNESS MetaTrader 5 terminal
# to your MQL5 Virtual Hosting service. It reads the instructions from the
# INSTRUCTIONS.md file and displays them step-by-step.

# Clear the console for a clean start
Clear-Host

# Define colors for different text types to improve readability
$titleColor = "Yellow"
$headerColor = "Green"
$stepColor = "Cyan"
$infoColor = "White"
$noteColor = "Magenta"
$promptColor = "Gray"

# Get the absolute path to the INSTRUCTIONS.md file, assuming it's in the same directory
try {
    $scriptPath = $PSScriptRoot
    $instructionsFile = Join-Path $scriptPath "INSTRUCTIONS.md"
} catch {
    # If $PSScriptRoot is not available (e.g., running in older PowerShell ISE)
    $scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path
    $instructionsFile = Join-Path $scriptPath "INSTRUCTIONS.md"
}


# --- Function to display text with formatting ---
function Write-FormattedLine {
    param(
        [string]$Line
    )

    if ($Line -match '^\#\#\#\s+') {
        # Sub-sub-header
        Write-Host $Line.Replace('###', '    -') -ForegroundColor $infoColor
    } elseif ($Line -match '^\#\#\s+') {
        # Sub-header
        Write-Host $Line.Replace('## ', '') -ForegroundColor $headerColor
        Write-Host ("-" * ($Line.Length - 3)) -ForegroundColor $headerColor
    } elseif ($Line -match '^\#\s+') {
        # Main title
        $title = $Line.Replace('# ', '')
        Write-Host ("=" * $title.Length) -ForegroundColor $titleColor
        Write-Host $title -ForegroundColor $titleColor
        Write-Host ("=" * $title.Length) -ForegroundColor $titleColor
    } elseif ($Line -match '^\d+\.\s+') {
        # Numbered list item
        Write-Host $Line -ForegroundColor $stepColor
    } elseif ($Line -match '^\*\s+') {
        # Bullet point
        Write-Host "  $Line" -ForegroundColor $infoColor
    } elseif ($Line -match '^\*\*.*\*\*') {
        # Bold text (used for notes)
        Write-Host $Line.Replace('**', '') -ForegroundColor $noteColor
    } elseif ($Line.Trim() -eq "") {
        # Empty line
        Write-Host ""
    }
    else {
        # Normal text
        Write-Host $Line -ForegroundColor $infoColor
    }
}

# --- Main Script Logic ---

# 1. Check if the instructions file exists
if (-not (Test-Path $instructionsFile)) {
    Write-Host "Error: INSTRUCTIONS.md not found." -ForegroundColor Red
    Write-Host "Please ensure 'INSTRUCTIONS.md' is in the same directory as this script." -ForegroundColor Red
    Read-Host "Press Enter to exit..."
    exit
}

# 2. Read the content of the markdown file
$lines = Get-Content $instructionsFile

# 3. Display the instructions section by section
$sectionBreak = "## "
$currentSectionLines = New-Object System.Collections.Generic.List[string]

Write-FormattedLine $lines[0] # Display the main title first
$currentSectionLines.AddRange($lines | Select-Object -Skip 1)

# Group lines by sections (starting with ##)
$sections = (Get-Content $instructionsFile -Raw) -split "(?=`r?`n## )"

foreach ($section in $sections) {
    $section.Split("`n") | ForEach-Object {
        $line = $_.Trim()
        Write-FormattedLine $line
    }

    Write-Host ""
    Read-Host -Prompt "Press Enter to continue..."
    Clear-Host
}

Write-Host "End of instructions. Good luck!" -ForegroundColor "Green"
Read-Host -Prompt "Press Enter to exit..."
