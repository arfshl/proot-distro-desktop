# Ubuntu LTS

## CLI-only without Desktop
    PD_OVERRIDE_TARBALL_URL="https://github.com/arfshl/pd-custom-rootfs/releases/download/ubuntu-lts-latest/ubuntu-lts-latest-arm64.tar.xz" PD_OVERRIDE_TARBALL_SHA256="" proot-distro install ubuntu --override-alias ubuntu-lts-xfce

## XFCE (Recomendded for Beginners)
- proot-distro aliases: ubuntu-lts-xfce
- Username: ubuntu-xfce
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/ubuntu-lts/xfce/bootstrap.sh && sh bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update && sudo apt install firefox vlc thunderbird atril ristretto galculator libheif1 xarchiver webp-pixbuf-loader fonts-liberation p7zip mousepad && apt clean

#### Remove (rootfs only)
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/ubuntu-lts/xfce/remove-rootfs.sh && sh remove-rootfs.sh && rm remove-rootfs.sh
#### Remove (full)
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/ubuntu-lts/xfce/remove-full.sh && sh remove-full.sh && rm remove-full.sh

## Installing Chromium
    sudo su && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/ubuntu-lts/chromium-install.sh && sh chromium-install.sh && rm chromium-install.sh
