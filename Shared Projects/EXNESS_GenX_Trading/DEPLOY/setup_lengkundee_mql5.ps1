# Setup MQL5 Connection for LengKundee
# Specifically for VPS ID: 6773048

$ErrorActionPreference = "Stop"

function Show-Header {
    Clear-Host
    Write-Host "═══════════════════════════════════════════════════" -ForegroundColor Cyan
    Write-Host "  MQL5 Connection Setup - User: LengKundee" -ForegroundColor Cyan
    Write-Host "  Active VPS ID: 6773048" -ForegroundColor Cyan
    Write-Host "═══════════════════════════════════════════════════" -ForegroundColor Cyan
    Write-Host ""
}

function Pause-Step {
    param($Message)
    Write-Host ""
    Write-Host $Message -ForegroundColor Yellow
    Read-Host "Press Enter to continue to the next step..."
    Write-Host ""
}

Show-Header

Write-Host "Step 1: Community Account Configuration" -ForegroundColor Green
Write-Host "--------------------------------------"
Write-Host "1. In MetaTrader 5, go to: Tools -> Options -> Community"
Write-Host "2. Login: " -NoNewline; Write-Host "lengkundee" -ForegroundColor White
Write-Host "3. Enter your MQL5 password."
Write-Host "4. Click OK."
Write-Host ""
Pause-Step "Wait for 'authorization successful' in the Journal tab."

Show-Header
Write-Host "Step 2: Environment Preparation" -ForegroundColor Green
Write-Host "------------------------------"
Write-Host "1. Open a chart (e.g., EURUSD)."
Write-Host "2. Drag 'EXNESS_GenX_Trader' onto the chart."
Write-Host "3. Ensure 'CFG_Enable_Trading' is TRUE in Inputs."
Write-Host "4. Enable 'AutoTrading' in the top toolbar (Green button)."
Write-Host "5. Verify the smiley face (😊) on the chart."
Write-Host ""
Pause-Step "Ready to migrate?"

Show-Header
Write-Host "Step 3: VPS Migration" -ForegroundColor Green
Write-Host "--------------------"
Write-Host "1. In Navigator, right-click your account number."
Write-Host "2. Select 'Virtual Hosting'."
Write-Host "3. Select VPS ID: " -NoNewline; Write-Host "6773048" -ForegroundColor White
Write-Host "4. Choose 'Migrate trading environment'."
Write-Host "5. Click 'Migrate'."
Write-Host ""
Pause-Step "Synchronization in progress..."

Show-Header
Write-Host "Step 4: Verification" -ForegroundColor Green
Write-Host "--------------------"
Write-Host "1. Go to Navigator -> Right-click Account -> Virtual Hosting -> Logs."
Write-Host "2. Open: hosting.6773048.experts"
Write-Host "3. Verify your EA is running correctly on the VPS."
Write-Host ""
Write-Host "═══════════════════════════════════════════════════" -ForegroundColor Green
Write-Host "  Setup Guide Complete!" -ForegroundColor Green
Write-Host "═══════════════════════════════════════════════════" -ForegroundColor Green
Write-Host ""
Read-Host "Press Enter to exit..."
