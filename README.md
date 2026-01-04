# ⚡ ZOLO-A6-9VxNUNA

[![GitHub Pages](https://img.shields.io/badge/GitHub%20Pages-Live-00ff88?style=for-the-badge&logo=github)](https://mouy-leng.github.io/ZOLO-A6-9VxNUNA-/)
[![License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)](LICENSE)
[![Windows 11](https://img.shields.io/badge/Windows%2011-25H2-0078D4?style=for-the-badge&logo=windows11)](https://www.microsoft.com/windows)

> **AI-Powered Trading System & Complete Device Automation Platform for Windows 11**
> **✨ Now optimized for low-spec systems - No more freezing!**

## 🌐 Live Website

**🔗 [https://mouy-leng.github.io/ZOLO-A6-9VxNUNA-/](https://mouy-leng.github.io/ZOLO-A6-9VxNUNA-/)**

## 📋 Overview

ZOLO-A6-9VxNUNA is a comprehensive system that combines:

- 🤖 **AI-Powered Trading Engine** - Advanced algorithms for Forex & Gold trading on MetaTrader 5
- 🖥️ **Windows 11 Automation** - Complete device setup and configuration scripts
- 🔒 **Enterprise Security** - Multi-layer security with encryption and validation
- ☁️ **Cloud Synchronization** - Seamless sync with OneDrive, Google Drive, and Dropbox
- 🔄 **Git Integration** - Automated Git operations with multi-remote support
- ⚡ **Performance Optimized** - Works smoothly on low-spec systems (Intel i3, 8GB RAM)

## 🆕 Recent Updates

### Performance Optimization (2025-12-25)
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
├── scripts/                          # PowerShell Automation Scripts
│   ├── Setup Scripts/
│   ├── Git Scripts/
│   ├── Security Scripts/
│   ├── GitHub Desktop Scripts/
│   └── Utility Scripts/
├── Documentation/                    # Project Documentation
│   ├── DEVICE-SKELETON.md           # Complete device structure
│   ├── PROJECT-BLUEPRINTS.md         # Project blueprints
│   ├── SYSTEM-INFO.md               # System specifications
│   ├── WORKSPACE-SETUP.md           # Workspace setup guide
│   └── SET-REPOS-PRIVATE.md         # Instructions for private repos
├── vps-services/                     # VPS 24/7 Trading System Services
│   ├── exness-service.ps1           # Exness MT5 Terminal service
│   ├── research-service.ps1         # Perplexity AI research service
│   ├── website-service.ps1          # GitHub website service
│   ├── cicd-service.ps1             # CI/CD automation service
│   ├── mql5-service.ps1              # MQL5 Forge integration
│   └── master-controller.ps1       # Master service controller
├── trading-bridge/                   # Trading Bridge System
│   ├── python/                      # Python trading engine
│   ├── mql5/                        # MQL5 Workspace (see trading-bridge/mql5/README.md)
│   └── README.md                    # Trading bridge documentation
├── projects/                         # Active development projects
│   ├── Google AI Studio/            # AI Studio related projects
│   └── LiteWriter/                  # LiteWriter application
├── project-scanner/                  # Project Discovery & Execution System
├── system-setup/                     # System Configuration & Optimization
├── storage-management/               # Storage and drive management tools
├── Document,sheed,PDF, PICTURE/     # Documentation and media
├── Secrets/                          # Protected credentials (not tracked in git)
└── TECHNO POVA 6 PRO/                # Device-specific files
```

## 🚀 Quick Start

### 1. Clone the Repository

```powershell
git clone https://github.com/Mouy-leng/ZOLO-A6-9VxNUNA-.git
cd ZOLO-A6-9VxNUNA-
```

### 2. Run the Setup

Run the master launch script to begin the setup on any platform:

```powershell
# Run as Administrator
.\start.ps1
```

This will set up:
- ✅ Workspace structure
- ✅ Windows configuration
- ✅ Cloud sync services
- ✅ Git repositories
- ✅ Security settings
- ✅ Cursor rules
- ✅ All automation projects

### 3. Configure MetaTrader 5

```powershell
.\setup-mt5-integration.ps1
```

### 4. Monitor MetaEditor Logs

```powershell
# Monitor compilation logs and errors
.\monitor-metaeditor-logs.ps1 -Mode errors

# Or use the interactive launcher
.\MONITOR-METAEDITOR.bat
```

### 5. Launch Trading System

```powershell
.\start-trading-system.ps1
```

### VPS 24/7 Trading System

Start the complete 24/7 automated trading system:

```powershell
# Run as Administrator (fully automated, no user interaction)
.\auto-start-vps-admin.ps1
```

Or double-click: `AUTO-START-VPS.bat`

This will:
- ✅ Deploy all VPS services
- ✅ Start Exness MT5 Terminal
- ✅ Start Web Research Service (Perplexity AI)
- ✅ Start GitHub Website Service (ZOLO-A6-9VxNUNA)
- ✅ Start CI/CD Automation Service
- ✅ Start MQL5 Forge Integration
- ✅ Handle all errors automatically

### Windows Setup Automation

```powershell
# Run as Administrator
.\auto-setup.ps1
# or
.\complete-windows-setup.ps1
```

### Workspace Verification

```powershell
.\setup-workspace.ps1
```

### Branch Management

Automated tools for managing Git branches and pull requests:

```powershell
# Merge pull requests interactively
.\merge-branches.ps1

# Clean up old and merged branches (dry run)
.\delete-merged-branches.ps1

# Actually delete branches
.\delete-merged-branches.ps1 -DryRun $false
```

**📖 See**: [Branch Management Guide](BRANCH-MANAGEMENT-GUIDE.md) for complete documentation

### MetaEditor Log Monitoring

Monitor MetaEditor compilation logs for errors and warnings:

```powershell
# Interactive menu
.\MONITOR-METAEDITOR.bat

# Show recent logs
.\monitor-metaeditor-logs.ps1 -Mode recent

# Real-time monitoring
.\monitor-metaeditor-logs.ps1 -Mode tail

# Show only errors and warnings
.\monitor-metaeditor-logs.ps1 -Mode errors

# Complete summary
.\monitor-metaeditor-logs.ps1 -Mode summary
```

**📖 See**: [MetaEditor Log Monitor Guide](METAEDITOR-LOG-MONITOR-GUIDE.md) for complete documentation

## 📋 Features

### Windows Setup Scripts
- ✅ Configure Windows Account Sync
- ✅ Set up File Explorer preferences
- ✅ Configure default browser and apps
- ✅ Windows Defender exclusions for cloud folders
- ✅ Windows Firewall rules for cloud services
- ✅ Windows Security (Controlled Folder Access) configuration
- ✅ Cloud sync service verification (OneDrive, Google Drive, Dropbox)

### Git Automation
- ✅ Multi-remote repository support
- ✅ Automated git operations
- ✅ Secure credential management

### Security Validation
- ✅ Comprehensive security checks
- ✅ Token security validation
- ✅ Script integrity verification

### MetaEditor Log Monitoring
- ✅ Real-time log monitoring
- ✅ Compilation error detection
- ✅ Warning analysis
- ✅ Historical log viewing
- ✅ Automated error summaries

### VPS 24/7 Trading System
- ✅ Exness MT5 Terminal (24/7 operation)
- ✅ Web Research Automation (Perplexity AI)
- ✅ GitHub Website Hosting (ZOLO-A6-9VxNUNA)
- ✅ CI/CD Automation (Python projects)
- ✅ MQL5 Forge Integration
- ✅ Automated error handling
- ✅ Auto-restart capabilities

### Project Scanner
- ✅ Scan all local drives for development projects
- ✅ Discover scripts, applications, and code projects
- ✅ Execute projects in the background
- ✅ Generate comprehensive reports

### System Setup & Optimization
- ✅ Drive cleanup and optimization
- ✅ Drive role assignment and permissions
- ✅ Registry optimizations
- ✅ Cursor IDE configuration
- ✅ MCP (Model Context Protocol) setup

## 🔗 Connected Repositories

| Repository | Description | Status |
|------------|-------------|--------|
| [ZOLO-A6-9VxNUNA-](https://github.com/Mouy-leng/ZOLO-A6-9VxNUNA-) | Primary - Main trading system | 🟢 Active |
| [my-drive-projects](https://github.com/A6-9V/my-drive-projects) | Secondary - Device skeleton | 🟢 Active |
| [I-bride_bridge3rd](https://github.com/A6-9V/I-bride_bridge3rd) | Bridge - Third-party integration | 🟢 Active |

## 💻 System Requirements

| Component | Requirement |
|-----------|-------------|
| OS | Windows 11 Home 25H2+ |
| Processor | Intel i3-N305 or better |
| RAM | 8 GB minimum |
| PowerShell | 5.1 or higher |
| Git | 2.40+ required |
| Trading | MetaTrader 5 with EXNESS |

## 🔒 Security Features

- ✅ 256-bit encryption for sensitive data
- ✅ Secure credential management via Windows Credential Manager
- ✅ Token validation and rotation
- ✅ HTTPS enforcement on all communications
- ✅ Automated security audits

Sensitive files including credentials, API keys, certificates, and logs are automatically excluded from version control via `.gitignore`.

**Protected file types:**
- `.pem` files (certificates and keys)
- `.json` credential files
- `.csv` data exports
- Log files
- Screenshots
- Temporary files
- Personal directories and media files

## 📚 Documentation

- [Device Skeleton](docs/device-skeleton.html) - Complete device structure
- [Project Blueprints](docs/project-blueprints.html) - Architecture details
- [Automation Rules](docs/automation-rules.html) - Automation patterns
- [Security Guide](docs/security.html) - Security configurations
- [MT5 Integration](docs/mt5-integration.html) - Trading setup
- **trading-bridge/mql5/README.md** - MQL5 Workspace paths and configuration
- **trading-bridge/README.md** - Trading bridge system documentation
- **DEVICE-SKELETON.md** - Complete device structure blueprint
- **PROJECT-BLUEPRINTS.md** - Detailed project blueprints
- **SYSTEM-INFO.md** - System specifications
- **WORKSPACE-SETUP.md** - Workspace setup guide
- **VPS-SETUP-GUIDE.md** - VPS 24/7 trading system guide
- **AUTOMATION-RULES.md** - Automation patterns
- **GITHUB-DESKTOP-RULES.md** - GitHub Desktop integration
- **MANUAL-SETUP-GUIDE.md** - Manual setup instructions
- **METAEDITOR-LOG-MONITOR-GUIDE.md** - MetaEditor log monitoring guide

## 🏢 Organization

Managed by **A6-9V** organization for better control and collaboration.

### Accounts

- **Microsoft/Outlook**: Lengkundee01@outlook.com
- **Google/Gmail**: Lengkundee01@gmail.com
- **GitHub**: [Mouy-leng](https://github.com/Mouy-leng) / [A6-9V](https://github.com/A6-9V)
- **ORCID**: [0009-0009-3473-2131](https://orcid.org/0009-0009-3473-2131)

## 🔧 System Information

- **Device**: NuNa
- **OS**: Windows 11 Home Single Language 25H2 (Build 26220.7344)
- **Processor**: Intel(R) Core(TM) i3-N305 (1.80 GHz)
- **RAM**: 8.00 GB (7.63 GB usable)
- **Architecture**: 64-bit x64-based processor

## 📦 Git Repositories

This workspace is connected to multiple repositories:

- **Primary (origin)**: https://github.com/Mouy-leng/ZOLO-A6-9VxNUNA-.git
- **Secondary 1 (bridges3rd)**: https://github.com/A6-9V/I-bride_bridges3rd.git
- **Secondary 2 (drive-projects)**: https://github.com/A6-9V/my-drive-projects.git

## 🔐 Making Repositories Private

See **SET-REPOS-PRIVATE.md** for instructions on making repositories private.

## 📝 Notes

- This workspace is synchronized with OneDrive and Google Drive
- Duplicate files are excluded from version control
- All sensitive data is gitignored for security
- Complete device skeleton structure and blueprints included
- VPS 24/7 trading system fully automated

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- MetaTrader 5 Platform
- EXNESS Broker
- GitHub Pages for hosting
- The open-source community

---

<div align="center">

**⚡ Built with passion by A6-9V Organization**

[![GitHub](https://img.shields.io/badge/GitHub-Mouy--leng-181717?style=flat-square&logo=github)](https://github.com/Mouy-leng)
[![Website](https://img.shields.io/badge/Website-Live-00ff88?style=flat-square)](https://mouy-leng.github.io/ZOLO-A6-9VxNUNA-/)

</div>
