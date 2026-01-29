# Trading Bridge System

Complete automated trading system with Python-MQL5 bridge, multi-broker API support, and multi-symbol trading.

## Overview

This system provides:
- **Python Trading Engine** - Strategy analysis and signal generation
- **MQL5 Bridge** - ZeroMQ-based communication between Python and MQL5
- **Multi-Broker Support** - Trade on Exness and other brokers with API access
- **Multi-Symbol Trading** - Manage trading across multiple symbols simultaneously
- **Background Service** - Runs 24/7 without user interaction
- **Auto-Start** - Automatically starts on system boot

## Architecture

```
┌─────────────────┐         ┌─────────────────┐
│   LAPTOP (NuNa) │◄───────►│   VPS (Remote)   │
│                 │  Sync   │                 │
│  - Python Code  │         │  - MT5 Terminal │
│  - Strategy     │         │  - Execution    │
│  - Analysis     │         │  - Uptime       │
└─────────────────┘         └─────────────────┘
         │                           │
         └───────────┬───────────────┘
                     │
              ┌──────▼──────┐
              │   Bridge    │
              │ Python↔MQL5│
              └─────────────┘
```

## Quick Start

### 1. Install Python Dependencies

```powershell
cd trading-bridge
pip install -r requirements.txt
```

### 2. Configure MetaTrader 5

Ensure port 5500 is open in your firewall (requires Admin):
```powershell
.\setup-firewall-port-5500.ps1
```

### 3. Configure Brokers

Copy `config/brokers.json.example` (if available) to `config/brokers.json` or use the automated setup tools.
**IMPORTANT**: `config/brokers.json` is gitignored - never commit it!

### 4. Configure Symbols

Edit `config/symbols.json` to configure your trading symbols.

### 5. Security Check

Run the system-wide security check from the root:
```powershell
..\security-check.ps1
```

### 6. Start System

Launch the trading bridge and background service:
```powershell
.\start-trading-system.ps1
```

## Directory Structure

```
trading-bridge/
├── python/
│   ├── bridge/          # MQL5 bridge
│   ├── brokers/         # Broker API implementations
│   ├── strategies/       # Trading strategies
│   ├── trader/          # Multi-symbol trader
│   ├── services/        # Background services
│   └── security/        # Credential management
├── mql5/                # MQL5 Workspace (EAs and Includes)
│   ├── Experts/         # MQL5 Expert Advisors
│   └── Include/         # MQL5 includes
├── config/              # Configuration (gitignored)
├── logs/                # Logs (gitignored)
└── data/                # Trading data (gitignored)
```

## Components

### Python Bridge
- **mql5_bridge.py** - ZeroMQ server for Python side
- **signal_manager.py** - Trade signal queue and validation

### Broker APIs
- **base_broker.py** - Abstract base class
- **exness_api.py** - Exness broker implementation
- **broker_factory.py** - Broker factory pattern

### Multi-Symbol Trader
- **multi_symbol_trader.py** - Manages trading across symbols

### Background Service
- **background_service.py** - Main service that runs 24/7

### MQL5 Workspace
- **Expert Advisors** - Enhanced EAs for trading execution
- **Python Bridge EA** - ZeroMQ client for MQL5 side
- See `mql5/README.md` for workspace details, paths, and maintenance

## Configuration

See `CONFIGURATION.md` for detailed setup instructions.

## Security

See `SECURITY.md` for security best practices.

## Troubleshooting

1. **Python service not starting**: Check Python installation and dependencies
2. **Bridge connection failed**: Verify port 5500 is not in use and firewall is configured
3. **Broker API errors**: Check API keys in Windows Credential Manager
4. **MQL5 EA not receiving signals**: Verify EA is attached to chart and bridge is running

## Logs

All logs are in `trading-bridge/logs/` (created automatically on first run):
- `mql5_bridge_YYYYMMDD.log` - Bridge communication
- `trading_service_YYYYMMDD.log` - Service operations
- `orchestrator_YYYYMMDD.log` - Orchestrator monitoring

## Support

For issues or questions:
1. Check log files in the `logs/` directory
2. Run status check: `.\check-status.ps1`
3. Verify EA setup: `.\verify-ea-setup.ps1`
