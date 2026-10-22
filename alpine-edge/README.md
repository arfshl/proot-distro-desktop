# Alpine Linux Edge

## XFCE
- proot-distro aliases: alpine-edge-xfce
- Username: alpine-xfce
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/alpine-edge/xfce/bootstrap.sh && bash bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apk add firefox vlc thunderbird  libheif webp-pixbuf-loader p7zip atril ristretto galculator xarchiver mousepad

## LXQt
- proot-distro aliases: alpine-edge-lxqt
- Username: alpine-lxqt
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/alpine-edge/lxqt/bootstrap.sh && bash bootstrap.sh && rm bootstrap.sh

## MATE
- proot-distro aliases: alpine-edge-mate
- Username: alpine-mate
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/alpine-edge/mate/bootstrap.sh && bash bootstrap.sh && rm bootstrap.sh

## Cinnamon
- proot-distro aliases: alpine-edge-cinnamon
- Username: alpine-cinnamon
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/alpine-edge/cinnamon/bootstrap.sh && bash bootstrap.sh && rm bootstrap.sh

## KDE Plasma
- proot-distro aliases: alpine-edge-kde
- Username: alpine-kde
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/alpine-edge/kde/bootstrap.sh && bash bootstrap.sh && rm bootstrap.sh

## Installing Chromium
    sudo su
    
    curl -LO https://github.com/arfshl/proot-distro-desktop/raw/refs/heads/main/alpine/install-chromium.sh && bash install-chromium.sh && rm install-chromium.sh