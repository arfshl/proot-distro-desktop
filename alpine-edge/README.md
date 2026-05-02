# Alpine Linux Edge

## CLI
- proot-distro aliases: alpine-edge

#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/alpine-edge/cli/bootstrap.sh && sh bootstrap.sh

## XFCE
- proot-distro aliases: alpine-edge-xfce
- Username: alpine-edge-xfce
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/alpine-edge/xfce/bootstrap.sh && sh bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apk add firefox vlc thunderbird  libheif webp-pixbuf-loader p7zip atril ristretto galculator xarchiver mousepad

## LXQt
- proot-distro aliases: alpine-edge-lxqt
- Username: alpine-edge-lxqt
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/alpine-edge/lxqt/bootstrap.sh && sh bootstrap.sh

## MATE
- proot-distro aliases: alpine-edge-mate
- Username: alpine-edge-mate
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/alpine-edge/mate/bootstrap.sh && sh bootstrap.sh

## Cinnamon
- proot-distro aliases: alpine-edge-cinnamon
- Username: alpine-edge-cinnamon
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/alpine-edge/cinnamon/bootstrap.sh && sh bootstrap.sh

## KDE Plasma
- proot-distro aliases: alpine-edge-kde
- Username: alpine-edge-kde
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/alpine-edge/kde/bootstrap.sh && sh bootstrap.sh

## Installing Chromium
    sudo su && wget https://github.com/arfshl/proot-distro-desktop/raw/refs/heads/main/alpine/install-chromium.sh && sh install-chromium.sh && rm install-chromium.sh