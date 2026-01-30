# Sentinel's Journal - CRITICAL LEARNINGS ONLY

## 2025-01-30 - Insecure Local Dev Server Exposure
**Vulnerability:** The `launch-website.sh` and `launch-website.ps1` scripts used `python -m http.server` which binds to 0.0.0.0 by default, exposing the entire repository (including `.git/` history and potential secrets) to the local network.
**Learning:** Development tools in this codebase often prioritize convenience over security, defaulting to network exposure without warnings.
**Prevention:** Replaced direct `http.server` calls with `scripts/secure_server.py` which enforces localhost binding and blocks access to hidden files/directories.
