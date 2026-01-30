# MQL5 Workspace

MQL5 Algo Forge / [LengKundee](https://www.mql5.com/en/users/LengKundee)

## Paths
- Terminal data: `C:\Users\USER\AppData\Roaming\MetaQuotes\Terminal\59B5EF658331A93A0C9B2C215C575F68\MQL5`
  > **Note**: The terminal hash `59B5EF658331A93A0C9B2C215C575F68` is specific to this installation. To find your terminal hash, navigate to `%APPDATA%\MetaQuotes\Terminal\` and look for the folder containing your MT5 data.
- Experts: `MQL5\Experts\Advisors`
- Profiles: `MQL5\Profiles` (charts/templates)
- Logs: `MQL5\Logs`

## Active EAs
- `SmartMoneyConceptEA.mq5` - Smart Money Concept trading strategy
- `CryptoSmartMoneyEA.mq5` - Cryptocurrency Smart Money EA
- `PythonBridgeEA.mq5` - Python-MQL5 bridge for external signal execution

## Maintenance
- Profiles fix: copy defaults into `Profiles\Charts\<profile>` if missing/empty.
- Compile EAs in MetaEditor (F7) after updates.
- Keep API/credentials out of this tree (store in Windows Credential Manager).

## Git (Forge)
- Upstream: `https://forge.mql5.io/LengKundee/mql5.git`
- Use token via env var when pulling/pushing; do not store tokens in files.
