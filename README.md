# ⚡ ZOLO-A6-9VxNUNA

[![GitHub Pages](https://img.shields.io/badge/GitHub%20Pages-Live-00ff88?style=for-the-badge&logo=github)](https://mouy-leng.github.io/ZOLO-A6-9VxNUNA-/)
[![License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)](LICENSE)
[![Windows 11](https://img.shields.io/badge/Windows%2011-25H2-0078D4?style=for-the-badge&logo=windows11)](https://www.microsoft.com/windows)
[![Privacy Badger](https://img.shields.io/badge/Privacy-Badger-EF5533?style=for-the-badge&logo=eff)](https://privacybadger.org)

> **AI-Powered Trading System & Complete Device Automation Platform for Windows 11**
> **✨ Optimized for low-spec systems (Intel i3, 8GB RAM) - Performance Stable.**

## 🌐 Live Website

**🔗 [https://mouy-leng.github.io/ZOLO-A6-9VxNUNA-/](https://mouy-leng.github.io/ZOLO-A6-9VxNUNA-/)**

**🔑 [VPS Deployer Credentials](https://vps-deployer--genxdbxfx3.replit.app/credentials)**

### 🚀 Launch Website Locally

Test the website on your local machine before deploying:

**Linux/Mac:**
```bash
./launch-website.sh
```

**Windows:**
```powershell
.\launch-website.ps1
# Or double-click: launch-website.bat
```

**Access at:** http://localhost:8000/

📖 **See [WEBSITE-LAUNCH-GUIDE.md](WEBSITE-LAUNCH-GUIDE.md)** for detailed instructions on branch management and deployment.

## 📋 Overview

ZOLO-A6-9VxNUNA is a comprehensive system that combines:

- 🤖 **AI-Powered Trading Engine** - Advanced algorithms for Forex & Gold trading on MetaTrader 5
- 🖥️ **Windows 11 Automation** - Complete device setup and configuration scripts
- 🔒 **Enterprise Security** - Multi-layer security with encryption and validation
- 🛡️ **Privacy Protection** - Privacy Badger integration for tracker blocking
- ☁️ **Cloud Synchronization** - Seamless sync with OneDrive, Google Drive, and Dropbox
- 🔄 **Git Integration** - Automated Git operations with multi-remote support
- 🤖 **AI Automation** - AI Assistant rules for Jules and Cursor integration
- ⚡ **Performance Optimized** - Works smoothly on systems with Intel i3 and 8GB RAM

## 🆕 Recent Updates

### Privacy Badger Integration
**Enhanced Privacy and Security!**

- ✅ Privacy Badger integration for automatic tracker blocking
- ✅ GenX Trading global links and resources added
- ✅ Automated git workflow with AI assistance
- ✅ Comprehensive automation for pull, push, commit, and merge operations

**📖 See**: [Privacy Badger Info](PRIVACY-BADGER-INFO.md) | [GenX Trading Info](GENX-TRADING-INFO.md) | [Auto Git Workflow](auto-git-workflow.ps1)

### Performance Optimization
**Fixed laptop freezing issue during trade execution!**

- ✅ Reduced CPU usage by 70-80% through optimized polling
- ✅ Implemented adaptive resource management
- ✅ Added emergency brake for critical resource conditions
- ✅ Optimized EA processing with timer-based operations

**📖 See**: [Freeze Fix Quick Reference](FREEZE-FIX-QUICK-REFERENCE.md) | [Full Performance Guide](trading-bridge/PERFORMANCE-OPTIMIZATION.md)

## 📁 Project Structure

```
.
├── .cursor/                          # Cursor IDE Configuration
│   └── rules/                        # AI Assistant Rules
├── scripts/                          # Sub-scripts for specific tasks
│   ├── setup-mt5-integration.ps1     # MT5/Exness configuration
│   └── start-trading-system.ps1      # Launcher for trading platform
├── vps-services/                     # VPS 24/7 Trading System Services
│   ├── exness-service.ps1           # Exness MT5 Terminal service
│   ├── research-service.ps1         # Perplexity AI research service
│   ├── website-service.ps1          # GitHub website service
│   ├── cicd-service.ps1             # CI/CD automation service
│   ├── mql5-service.ps1              # MQL5 Forge integration
│   └── master-controller.ps1       # Master service controller
├── trading-bridge/                   # Trading Bridge System
│   ├── python/                      # Python trading engine
│   ├── mql5/                        # MQL5 Workspace (EAs and Includes)
│   └── README.md                    # Trading bridge documentation
├── project-scanner/                  # Project Discovery & Execution System
├── system-setup/                     # System Configuration & Optimization
├── storage-management/               # Storage and drive management tools
├── assets/, css/, js/                # Website frontend resources
├── index.html                        # Main website entry point
├── auto-git-workflow.ps1             # AI-Powered Git Automation
├── auto-setup.ps1                    # Automated setup script
├── complete-device-setup.ps1         # Main device configuration
├── launch-from-html-logs.ps1         # Log-based system launcher
├── security-check.ps1                # System security audit
├── start.ps1                         # Master setup entry point
├── AUTO-START-VPS.bat                # VPS quick start
└── *.md                              # Documentation and guides
```

## 🚀 Quick Start

### 1. Clone the Repository

```powershell
git clone https://github.com/Mouy-leng/ZOLO-A6-9VxNUNA-.git
cd ZOLO-A6-9VxNUNA-
```

### 2. Run the Master Setup

Run the master launch script as Administrator to begin the complete setup:

```powershell
.\start.ps1
```

This script will automatically trigger `complete-device-setup.ps1` and `AUTO-SETUP-EXNESS-ALL.ps1`.

### 3. Configure MetaTrader 5 Integration

Set up the connection between the automation system and MetaTrader 5:

```powershell
.\scripts\setup-mt5-integration.ps1
```

### 4. Launch Trading System

Launch the trading system interface and checks:

```powershell
.\scripts\start-trading-system.ps1
```

### 🎯 HTML Log-Based Launch

Launch all repository systems from your HTML trade report logs:

```powershell
# Double-click launch (easiest)
.\LAUNCH-FROM-HTML-LOGS.bat

# Or use PowerShell
.\launch-from-html-logs.ps1
```

**📖 See**: [HTML Log Launch Guide](HTML-LOG-LAUNCH-GUIDE.md)

### VPS 24/7 Trading System

Start the complete 24/7 automated trading system (fully automated, no user interaction):

```powershell
.\auto-start-vps-admin.ps1
```

Or double-click: `.\AUTO-START-VPS.bat`

## 📋 Features

### Windows Automation & Setup
- ✅ **Complete Device Setup**: Automatic configuration of Windows 11 preferences via `complete-device-setup.ps1`
- ✅ **Cloud Sync**: Automated verification for OneDrive, Google Drive, and Dropbox
- ✅ **Workspace Verification**: Scripted check for directory structure and dependencies
- ✅ **System Optimization**: Registry and performance tweaks for low-spec hardware

### Trading System
- ✅ **Exness Integration**: Automated setup for MT5 with Exness broker
- ✅ **Trading Bridge**: ZeroMQ-based bridge between Python strategies and MQL5
- ✅ **Enhanced EAs**: Expert Advisors with built-in risk management (1% per trade)
- ✅ **Market Research**: Perplexity AI integration for automated market analysis

### Git & AI Automation
- ✅ **AI Git Workflow**: Automated pull, commit, push, and merge with AI assistance via `auto-git-workflow.ps1`
- ✅ **Multi-Remote**: Support for pushing to multiple repository remotes simultaneously
- ✅ **Cursor Integration**: Pre-configured rules for AI development in Cursor IDE

### Security & Privacy
- ✅ **Privacy Badger**: Integration for tracker blocking and privacy awareness
- ✅ **Credential Security**: Local storage of sensitive tokens via Windows Credential Manager
- ✅ **Automated Audits**: Security status and script integrity checks via `security-check.ps1`

## 🔗 Connected Repositories

| Repository | Description | Status |
|------------|-------------|--------|
| [ZOLO-A6-9VxNUNA-](https://github.com/Mouy-leng/ZOLO-A6-9VxNUNA-) | Primary - Main trading system | 🟢 Active |
| [my-drive-projects](https://github.com/A6-9V/my-drive-projects) | Secondary - Device skeleton | 🟢 Active |
| [I-bride_bridge3rd](https://github.com/A6-9V/I-bride_bridge3rd) | Bridge - Third-party integration | 🟢 Active |

## 💻 System Requirements

| Component | Requirement |
|-----------|-------------|
| OS | Windows 11 Home Single Language 25H2+ |
| Processor | Intel Core i3-N305 (1.80 GHz) or better |
| RAM | 8 GB (7.63 GB usable minimum) |
| PowerShell | 5.1 or higher |
| Git | 2.40+ required |
| Trading | MetaTrader 5 with EXNESS broker |

## 📚 Documentation

- [SYSTEM-INFO.md](SYSTEM-INFO.md) - Complete system specifications
- [DEVICE-SKELETON.md](DEVICE-SKELETON.md) - Complete device structure blueprint
- [PROJECT-BLUEPRINTS.md](PROJECT-BLUEPRINTS.md) - Detailed architecture details
- [AUTOMATION-RULES.md](AUTOMATION-RULES.md) - Automation patterns and rules
- [SECURITY.md](SECURITY.md) - Security configurations and guide
- [TRADING-SYSTEM-STATUS.md](TRADING-SYSTEM-STATUS.md) - Trading system verification
- [WEBSITE-LAUNCH-GUIDE.md](WEBSITE-LAUNCH-GUIDE.md) - Website launch and deployment
- [VPS-SETUP-GUIDE.md](VPS-SETUP-GUIDE.md) - 24/7 VPS trading system guide
- [BRANCH-MANAGEMENT-GUIDE.md](BRANCH-MANAGEMENT-GUIDE.md) - Git branch strategy
- [PRIVACY-BADGER-INFO.md](PRIVACY-BADGER-INFO.md) - Privacy protection details
- [GENX-TRADING-INFO.md](GENX-TRADING-INFO.md) - GenX Trading global links

## 🌳 Branch Management

- **Default Branch**: `main` is the primary production branch.
- **Development**: New features and fixes are developed in branches (e.g., `feat/`, `fix/`).
- **CI/CD**: GitHub Actions handle security audits and basic linting on push.

## 🏢 Organization

Managed by **A6-9V** organization.

- **GitHub Org**: [A6-9V](https://github.com/organizations/A6-9V)
- **ORCID**: [0009-0009-3473-2131](https://orcid.org/0009-0009-3473-2131)

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

<div align="center">

**⚡ Built with passion by A6-9V Organization**

[![GitHub](https://img.shields.io/badge/GitHub-Mouy--leng-181717?style=flat-square&logo=github)](https://github.com/Mouy-leng)
[![Website](https://img.shields.io/badge/Website-Live-00ff88?style=flat-square)](https://mouy-leng.github.io/ZOLO-A6-9VxNUNA-/)

</div>
