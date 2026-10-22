#!/usr/bin/env bash
set -euo pipefail
# Install Chromium ARM from Debian Repository
sudo apt update && sudo apt install chromium curl -y && apt clean
sudo install -d -m 0755 /usr/local/share/applications
sudo curl -fsSLo /usr/local/share/applications/chromium.desktop https://raw.githubusercontent.com/arfshl/prootdistro-chromium-installer/refs/heads/main/chromium-proot.desktop
sudo rm -f /etc/chromium/master_preferences
echo "Chromium installed, looks for chromium launcher with `(proot launcher)` prefix to launch it"