# ZOLO-A6-9VxNUNA Website Launch Script (PowerShell)
# Launch local development server for testing

param(
    [int]$Port = 8000
)

$ErrorActionPreference = "Stop"

# Colors for output
function Write-ColorOutput {
    param(
        [string]$Message,
        [string]$Color = "White",
        [switch]$NoNewline
    )
    if ($NoNewline) {
        Write-Host $Message -ForegroundColor $Color -NoNewline
    } else {
        Write-Host $Message -ForegroundColor $Color
    }
}

Clear-Host

Write-ColorOutput "╔════════════════════════════════════════════════════════╗" "Cyan"
Write-ColorOutput "║      ZOLO-A6-9VxNUNA Website Launch Script            ║" "Cyan"
Write-ColorOutput "╚════════════════════════════════════════════════════════╝" "Cyan"
Write-Host ""

# Get current directory (script location)
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $ScriptDir

# Check current branch
try {
    $currentBranch = & git branch --show-current 2>$null
    Write-ColorOutput "📍 Current Branch: " "Yellow" -NoNewline
    Write-Host $currentBranch
    Write-Host ""

    # Branch information
    switch -Wildcard ($currentBranch) {
        "main" {
            Write-ColorOutput "✅ On MAIN branch - Production preview" "Green"
            Write-ColorOutput "   This will show the production-ready version" "Cyan"
        }
        "copilot/*" {
            Write-ColorOutput "🔧 On feature branch - Development testing" "Yellow"
            Write-ColorOutput "   Testing branch-specific changes" "Cyan"
        }
        default {
            Write-ColorOutput "⚠️  On branch: $currentBranch" "Yellow"
            Write-ColorOutput "   Testing feature branch changes" "Cyan"
        }
    }
    Write-Host ""
} catch {
    Write-ColorOutput "⚠️  Not a git repository or git not found" "Yellow"
    Write-Host ""
}

# Check if port is in use
$portInUse = $false
try {
    $connection = Get-NetTCPConnection -LocalPort $Port -ErrorAction SilentlyContinue
    if ($connection) {
        $portInUse = $true
        Write-ColorOutput "⚠️  Port $Port is already in use" "Yellow"
        Write-ColorOutput "   Trying alternative port 8080..." "Cyan"
        $Port = 8080

        $connection = Get-NetTCPConnection -LocalPort $Port -ErrorAction SilentlyContinue
        if ($connection) {
            Write-ColorOutput "❌ Port $Port is also in use" "Red"
            Write-Host ""
            Write-Host "Please specify a different port:"
            Write-Host "  .\launch-website.ps1 -Port 8888"
            exit 1
        }
    }
} catch {
    # If Get-NetTCPConnection fails, try using netstat
    $netstat = netstat -an | Select-String ":$Port.*LISTENING"
    if ($netstat) {
        Write-ColorOutput "⚠️  Port $Port appears to be in use" "Yellow"
        Write-ColorOutput "   Trying alternative port 8080..." "Cyan"
        $Port = 8080

        # Verify that the alternative port 8080 is not also in use
        $altNetstat = netstat -an | Select-String ":$Port.*LISTENING"
        if ($altNetstat) {
            Write-ColorOutput "❌ Port $Port also appears to be in use" "Red"
            Write-Host ""
            Write-Host "Please specify a different port:"
            Write-Host "  .\launch-website.ps1 -Port 8888"
            exit 1
        }
    }
}

# Check for Python
$pythonCmd = $null
if (Get-Command python3 -ErrorAction SilentlyContinue) {
    $pythonCmd = "python3"
} elseif (Get-Command python -ErrorAction SilentlyContinue) {
    $pythonCmd = "python"
} else {
    Write-ColorOutput "❌ Python not found" "Red"
    Write-Host "Please install Python to run the development server"
    Write-Host "Download from: https://www.python.org/downloads/"
    Read-Host "Press Enter to exit"
    exit 1
}

Write-ColorOutput "🚀 Starting development server..." "Green"
Write-Host ""
Write-ColorOutput "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" "Cyan"
Write-ColorOutput "   Server Running!" "Green"
Write-ColorOutput "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" "Cyan"
Write-Host ""
Write-ColorOutput "   Local URL:     " "Yellow" -NoNewline
Write-Host "http://localhost:$Port/"
Write-ColorOutput "   Network:       " "Yellow" -NoNewline
Write-Host "Disabled (Security Restriction)"

Write-Host ""
Write-ColorOutput "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" "Cyan"
Write-Host ""
Write-ColorOutput "📝 Testing Checklist:" "Green"
Write-Host "   • Homepage loads correctly"
Write-Host "   • Navigation works"
Write-Host "   • All sections visible"
Write-Host "   • CSS/JS working"
Write-Host "   • No console errors"
Write-Host ""
Write-ColorOutput "Press Ctrl+C to stop the server" "Yellow"
Write-Host ""

# Start the server (Secure Mode)
try {
    & $pythonCmd scripts/secure_server.py $Port
} catch {
    Write-ColorOutput "❌ Failed to start server: $_" "Red"
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host ""
Write-ColorOutput "✅ Server stopped" "Green"
