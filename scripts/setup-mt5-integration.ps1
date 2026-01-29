# MetaTrader 5 Integration Setup Script for ZOLO-A6-9VxNUNA
# This script configures MetaTrader 5 with EXNESS broker integration

$ErrorActionPreference = "Continue"
$ProgressPreference = "Continue"

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  MetaTrader 5 Integration Setup" -ForegroundColor Cyan
Write-Host "  EXNESS Broker Configuration" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# MT5 Terminal Path (from memory)
$mt5TerminalPath = "C:\Users\$env:USERNAME\AppData\Roaming\MetaQuotes\Terminal"
$mt5TerminalID = "59B5EF658331A93A0C9B2C215C575F68"
$mt5FullPath = Join-Path $mt5TerminalPath $mt5TerminalID
$mql5Path = Join-Path $mt5FullPath "MQL5"
$sharedProjectsPath = Join-Path $mql5Path "Shared Projects"

Write-Host "[1/6] Checking MetaTrader 5 installation..." -ForegroundColor Yellow

# Check if MT5 is installed
$mt5InstallPaths = @(
    "${env:ProgramFiles}\MetaTrader 5",
    "${env:ProgramFiles(x86)}\MetaTrader 5",
    "$env:LOCALAPPDATA\Programs\MetaTrader 5"
)

$mt5Found = $false
foreach ($path in $mt5InstallPaths) {
    if (Test-Path $path) {
        Write-Host "  ✓ MetaTrader 5 found at: $path" -ForegroundColor Green
        $mt5Found = $true
        break
    }
}

if (-not $mt5Found) {
    Write-Host "  ✗ MetaTrader 5 not found in standard locations" -ForegroundColor Red
    Write-Host "  Please install MetaTrader 5 first" -ForegroundColor Yellow
    Write-Host "  Download from: https://www.metatrader5.com/en/download" -ForegroundColor Cyan
}

# Check Terminal Directory
Write-Host "[2/6] Checking MT5 terminal directory..." -ForegroundColor Yellow
if (Test-Path $mt5FullPath) {
    Write-Host "  ✓ Terminal directory found: $mt5FullPath" -ForegroundColor Green
} else {
    Write-Host "  → Terminal directory not found (will be created on first MT5 run)" -ForegroundColor Gray
    Write-Host "  Expected path: $mt5FullPath" -ForegroundColor Gray
}

# Check MQL5 Directory
Write-Host "[3/6] Checking MQL5 directory..." -ForegroundColor Yellow
if (Test-Path $mql5Path) {
    Write-Host "  ✓ MQL5 directory found: $mql5Path" -ForegroundColor Green
} else {
    Write-Host "  → MQL5 directory not found (will be created on first MT5 run)" -ForegroundColor Gray
}

# Check Shared Projects
Write-Host "[4/6] Checking shared projects..." -ForegroundColor Yellow
if (Test-Path $sharedProjectsPath) {
    Write-Host "  ✓ Shared Projects directory found" -ForegroundColor Green
    
    # Check for EXNESS_GenX_Trading project
    $exnessProjectPath = Join-Path $sharedProjectsPath "EXNESS_GenX_Trading"
    if (Test-Path $exnessProjectPath) {
        Write-Host "  ✓ EXNESS_GenX_Trading project found" -ForegroundColor Green
    } else {
        Write-Host "  → EXNESS_GenX_Trading project not found" -ForegroundColor Gray
        Write-Host "  You may need to create this project manually" -ForegroundColor Yellow
    }
} else {
    Write-Host "  → Shared Projects directory not found" -ForegroundColor Gray
    Write-Host "  Will be created when MT5 is first run" -ForegroundColor Gray
}

# EXNESS Broker Configuration
Write-Host "[5/6] EXNESS broker configuration..." -ForegroundColor Yellow
Write-Host "  Broker: EXNESS" -ForegroundColor Gray
Write-Host "  Server: Use EXNESS demo or live server" -ForegroundColor Gray
Write-Host "  Account: Configure in MT5 platform" -ForegroundColor Gray
Write-Host "  ✓ Configuration instructions provided" -ForegroundColor Green

# Create Configuration File
Write-Host "[6/6] Creating configuration files..." -ForegroundColor Yellow
$configDir = "$env:USERPROFILE\Documents\ZOLO-Workspace\Config"
if (-not (Test-Path $configDir)) {
    New-Item -ItemType Directory -Path $configDir -Force | Out-Null
}

$mt5Config = @{
    TerminalPath = $mt5FullPath
    TerminalID = $mt5TerminalID
    MQL5Path = $mql5Path
    SharedProjectsPath = $sharedProjectsPath
    Broker = "EXNESS"
    ProjectName = "EXNESS_GenX_Trading"
} | ConvertTo-Json -Depth 3

$configFile = Join-Path $configDir "mt5-config.json"
$mt5Config | Out-File -FilePath $configFile -Encoding UTF8
Write-Host "  ✓ Configuration saved to: $configFile" -ForegroundColor Green

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  MT5 Integration Setup Complete!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "  1. Open MetaTrader 5" -ForegroundColor White
Write-Host "  2. Connect to EXNESS broker" -ForegroundColor White
Write-Host "  3. Navigate to: Tools > Options > Expert Advisors" -ForegroundColor White
Write-Host "  4. Enable automated trading" -ForegroundColor White
Write-Host "  5. Compile and attach EXNESS_GenX_Trader.mq5 EA" -ForegroundColor White
Write-Host "  6. Run: .\scripts\start-trading-system.ps1" -ForegroundColor White
Write-Host ""
Write-Host "Configuration file: $configFile" -ForegroundColor Cyan
Write-Host ""

