# Debian Sid

## CLI-only (without Desktop)
- proot-distro aliases: debian-sid

      PD_OVERRIDE_TARBALL_URL="https://github.com/arfshl/pd-custom-rootfs/releases/download/debian-sid-latest/debian-sid-arm64.tar.xz" PD_OVERRIDE_TARBALL_SHA256="" proot-distro install debian --override-alias debian-sid
  
## XFCE
- proot-distro aliases: debian-sid-xfce
- Username: debian-xfce
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/debian-sid/xfce/bootstrap.sh && sh bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update && sudo apt install firefox vlc thunderbird atril ristretto galculator libheif1 xarchiver webp-pixbuf-loader fonts-liberation p7zip mousepad && apt clean
