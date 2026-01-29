# AccountSetup_279410452.mq5

MQL5 script for verifying and displaying Exness demo account setup and trading bridge configuration.

## Account Information

- **Account Number**: 279410452
- **Server**: Exness-MT5Trial8
- **Account Type**: Demo
- **Password**: Leng3A69V[@Una]

## Purpose

This script performs the following checks:

1. **Account Verification**: Confirms connection to the correct Exness demo account
2. **Account Details**: Displays balance, equity, leverage, and other account information
3. **Bridge Configuration**: Shows the Python trading bridge port configuration (5500)
4. **Setup Instructions**: Provides next steps for completing the trading system setup

## Usage

### In MetaTrader 5

1. **Copy to MT5 Scripts Directory**:
   ```
   C:\Users\USER\AppData\Roaming\MetaQuotes\Terminal\59B5EF658331A93A0C9B2C215C575F68\MQL5\Scripts\
   ```

2. **Compile the Script**:
   - Open MetaEditor (F4 in MT5)
   - Open `AccountSetup_279410452.mq5`
   - Press F7 to compile

3. **Run the Script**:
   - In MT5, go to Navigator → Scripts
   - Drag `AccountSetup_279410452` onto a chart
   - Check the "Experts" tab for output

### Script Parameters

- **BridgePort**: Port number for Python trading bridge (default: 5500)
- **BridgeHost**: Bridge host address (default: 127.0.0.1)

## Output

The script displays:

- ✅ Account connection status
- 📊 Account balance and equity
- ⚙️ Trading bridge configuration
- 📝 Next steps for system setup
- 🐳 Docker/Server information

## Integration with Trading Bridge

This script is designed to work with the Python trading bridge system running on port 5500:

1. **Python Bridge**: Runs on port 5500 (ZeroMQ server)
2. **MQL5 EA**: Connects to port 5500 (ZeroMQ client)
3. **Docker**: Server is configured for port 5500

## Next Steps After Running

1. Ensure account 279410452 is connected
2. Start Python trading service on port 5500
3. Attach PythonBridgeEA to a chart with BridgePort = 5500
4. Begin automated trading with AI strategies

## Troubleshooting

### Account Not Connected

If you see "Account 279410452 is NOT currently connected":

1. Go to File → Login to Trade Account
2. Enter Account: 279410452
3. Enter Password: Leng3A69V[@Una]
4. Select Server: Exness-MT5Trial8
5. Click Login

### Bridge Not Available

If the bridge shows as unavailable:

1. Open PowerShell as Administrator
2. Navigate to `trading-bridge` directory
3. Run: `python run-trading-service.py`
4. Verify service starts on port 5500

## Security Notes

⚠️ **Important**: This script contains account credentials for a demo account only. Never commit or share credentials for live trading accounts.

## Related Files

- `PythonBridgeEA.mq5` - Main EA for automated trading
- `run-trading-service.py` - Python service launcher
- `configure-exness-port-5500.ps1` - Port configuration script

## Support

For issues or questions:
1. Check the script output in MT5 Experts tab
2. Verify Python service is running: `Get-NetTCPConnection -LocalPort 5500`
3. Review logs in `trading-bridge/logs/`
