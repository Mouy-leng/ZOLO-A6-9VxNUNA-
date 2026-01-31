# Sentinel's Journal - CRITICAL LEARNINGS ONLY

## 2025-01-30 - Insecure Local Dev Server Exposure
**Vulnerability:** The `launch-website.sh` and `launch-website.ps1` scripts used `python -m http.server` which binds to 0.0.0.0 by default, exposing the entire repository (including `.git/` history and potential secrets) to the local network.
**Learning:** Development tools in this codebase often prioritize convenience over security, defaulting to network exposure without warnings.
**Prevention:** Replaced direct `http.server` calls with `scripts/secure_server.py` which enforces localhost binding and blocks access to hidden files/directories.

## 2025-02-12 - Sensitive Source Code Exposure in Dev Server
**Vulnerability:** The local development server (`scripts/secure_server.py`) served all files in the repository root by default, exposing sensitive source code (`.ps1`, `.py`), configuration (`package.json`), and documentation (`.md`) containing internal details or PII.
**Learning:** `SimpleHTTPRequestHandler` serves everything in the directory. Blocking only dotfiles is insufficient when sensitive files (like automation scripts with hardcoded data) exist in the root without dot prefixes.
**Prevention:** Enhanced `scripts/secure_server.py` to enforce an allowlist/blocklist model, explicitly blocking sensitive file extensions (`.ps1`, `.py`, `.env`, etc.) and critical filenames (`package.json`).
