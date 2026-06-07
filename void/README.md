# Void Linux

## XFCE
- proot-distro aliases: void-xfce
- Username: void-xfce
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    curl -fssL https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/void/xfce/bootstrap.sh | bash

# LXQt
- proot-distro aliases: void-lxqt
- Username: void-lxqt
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    curl -fssL https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/void/lxqt/bootstrap.sh | bash


# MATE
- proot-distro aliases: void-mate
- Username: void-mate
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    curl -fssL https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/void/mate/bootstrap.sh | bash


# LXDE
- proot-distro aliases: void-lxde
- Username: void-lxde
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    curl -fssL https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/void/lxde/bootstrap.sh | bash


# Cinnamon
- proot-distro aliases: void-cinnamon
- Username: void-cinnamon
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    curl -fssL https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/void/cinnamon/bootstrap.sh | bash


# KDE Plasma
- proot-distro aliases: void-kde
- Username: void-kde
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    curl -fssL https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/void/kde/bootstrap.sh | bash

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo xbps-install -S  firefox  vlc thunderbird  libheif webp-pixbuf-loader p7zip atril ristretto galculator xarchiver mousepad 

## Installing Chromium
    sudo su && curl -fssL https://github.com/arfshl/proot-distro-desktop/raw/refs/heads/main/void/install-chromium.sh | bash