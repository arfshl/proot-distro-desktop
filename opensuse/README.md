# OpenSUSE

## XFCE
- proot-distro aliases: opensuse-xfce
- Username: opensuse-xfce
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890

#### Install
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/opensuse/xfce/bootstrap.sh && bash bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo zypper in firefox vlc thunderbird libheif1 webp-pixbuf-loader p7zip atril ristretto galculator xarchiver mousepad 

## MATE
- proot-distro aliases: opensuse-mate
- Username: opensuse-mate
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890

#### Install
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/opensuse/mate/bootstrap.sh && bash bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo zypper in firefox vlc thunderbird libheif1 webp-pixbuf-loader p7zip atril eom mate-calc engrampa pluma

## LXQt
- proot-distro aliases: opensuse-lxqt
- Username: opensuse-lxqt
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890

#### Install
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/opensuse/lxqt/bootstrap.sh && bash bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo zypper in firefox vlc thunderbird libheif1 webp-pixbuf-loader p7zip lximage-qt kcalc lxqt-archiver qpdfview featherpad

## LXDE
- proot-distro aliases: opensuse-lxde
- Username: opensuse-lxde
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890

#### Install
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/opensuse/lxde/bootstrap.sh && bash bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo zypper in firefox vlc thunderbird libheif1 webp-pixbuf-loader p7zip atril gpicview galculator xarchiver mousepad 

## Cinnamon
- proot-distro aliases: opensuse-cinnamon
- Username: opensuse-cinnamon
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890

#### Install
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/opensuse/cinnamon/bootstrap.sh && bash bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo zypper in firefox vlc thunderbird libheif1 webp-pixbuf-loader p7zip engrampa atril eom mate-calc pluma

## KDE Plasma (Heavy)
- proot-distro aliases: opensuse-kde
- Username: opensuse-kde
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890

#### Install
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/opensuse/kde/bootstrap.sh && bash bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo zypper in firefox vlc thunderbird libheif1 webp-pixbuf-loader p7zip okular gwenview kcalc ark kate

## Installing Chromium-based web browser
It is reccomended to go here, and install listed browser: https://github.com/arfshl/prootdistro-chromium-installer

This script automates installation and desktop launcher patching, not only for Google Chrome but for other browser that supports ARM64, like Brave and Vivaldi

However if you prefer open-source chromium, you can still install it with this script

    sudo su
    
    curl -LO https://github.com/arfshl/proot-distro-desktop/raw/refs/heads/main/opensuse/install-chromium.sh && bash install-chromium.sh && rm install-chromium.sh