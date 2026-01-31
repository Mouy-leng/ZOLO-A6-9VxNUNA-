# MQL5 Account Connection Guide for LengKundee

This guide is specifically designed to help you connect your MQL5 account (`lengkundee`) to your EXNESS MetaTrader 5 terminal and migrate your trading environment to your active MQL5 VPS (ID: 6773048).

## ⚠️ Important Note on Terminals

The **EXNESS Web Terminal** (`exness.com/exness-terminal/`) does **NOT** support Expert Advisors (EAs) or MQL5 VPS hosting. You must use the **MetaTrader 5 Desktop Terminal** installed on your Windows VPS for this process.

---

## Step 1: Log in to your MQL5 Account in MT5

To use your MQL5 VPS, you must first log into your MQL5 community account within the terminal:

1.  Open your **EXNESS MetaTrader 5** desktop application.
2.  Go to the **Tools** menu and select **Options** (or press `Ctrl+O`).
3.  Click on the **Community** tab.
4.  Enter your MQL5 Login: `lengkundee`
5.  Enter your MQL5 Password.
6.  Click **OK**.

*Verify*: Look at the **Journal** tab in the Toolbox (`Ctrl+T`). You should see a message saying "MQL5.community: authorization successful".

---

## Step 2: Prepare Your Trading Environment

Before migrating to the VPS, you must set up the environment exactly how you want it to run:

1.  **Open the Chart**: Open a chart for the symbol you want to trade (e.g., `EURUSD`).
2.  **Attach the EA**:
    *   Open the Navigator (`Ctrl+N`).
    *   Find **EXNESS_GenX_Trader** under Expert Advisors.
    *   Drag it onto your chart.
3.  **Configure Settings**:
    *   In the EA inputs, ensure `CFG_Enable_Trading` is set to `true`.
    *   Set your desired risk and other parameters.
    *   Click **OK**.
4.  **Enable AutoTrading**: Click the **AutoTrading** button in the top toolbar. It must be **GREEN**.
5.  **Check Status**: Verify there is a **smiley face** 😊 in the top-right corner of your chart.

---

## Step 3: Migrate to MQL5 VPS (ID: 6773048)

Now you can move your setup to the virtual server:

1.  In the MT5 terminal, go to the **View** menu and select **Navigator** (`Ctrl+N`).
2.  Right-click on your **Account Number** (the one connected to Exness).
3.  Select **Virtual Hosting** from the menu.
4.  Choose your active VPS: **Singapore 09 (ID: 6773048)**.
5.  Select **"Migrate trading environment: charts, indicators, Expert Advisors, and settings"**.
6.  Click **Migrate**.

---

## Step 4: Verify Deployment on VPS

1.  Check the **Journal** tab for migration logs.
2.  To see what is happening on the VPS, go to **View > Navigator**, right-click your account, and select **Virtual Hosting > Logs**.
3.  Select the **hosting.6773048.experts** log file to see the EA's activity on the virtual server.

---

## Troubleshooting

*   **MQL5 login fails**: Double-check your password on [mql5.com](https://www.mql5.com).
*   **VPS not showing**: Ensure you are logged into the same MQL5 account (`lengkundee`) that purchased the hosting.
*   **EA not trading**: Check the VPS logs for errors like "Trade is disabled" or "Invalid volume".

---

*For automated assistance, run the `setup_lengkundee_mql5.ps1` script on your VPS.*
