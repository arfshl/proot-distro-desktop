#!/usr/bin/env bash
set -euo pipefail
# Install Chromium ARM from Debian Repository
echo 'Adding Debian Repository...'
sudo wget -q http://ftp.us.debian.org/debian/pool/main/d/debian-archive-keyring/debian-archive-keyring_2023.3+deb12u2_all.deb
sudo dpkg -i debian-archive-keyring_2023.3+deb12u2_all.deb
sudo rm debian-archive-keyring_2023.3+deb12u2_all.deb
sudo echo 'deb https://deb.debian.org/debian/ stable contrib main non-free non-free-firmware
deb https://security.debian.org/debian-security/ stable-security contrib main non-free non-free-firmware' >> /etc/apt/sources.list.d/debian.list

echo 'Package: chromium
Pin: origin security.debian.org
Pin-Priority: 1000

Package: chromium-common
Pin: origin security.debian.org
Pin-Priority: 1000

Package: chromium-sandbox
Pin: origin security.debian.org
Pin-Priority: 1000' >> /etc/apt/preferences.d/chromium

sudo apt update && sudo apt install chromium curl -y && apt clean
sudo install -d -m 0755 /usr/local/share/applications
sudo curl -fsSLo /usr/local/share/applications/chromium.desktop https://raw.githubusercontent.com/arfshl/prootdistro-chromium-installer/refs/heads/main/chromium-proot.desktop
sudo rm -f /etc/chromium/master_preferences
echo "Chromium installed, looks for chromium launcher with `(proot launcher)` prefix to launch it"