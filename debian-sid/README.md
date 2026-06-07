# Debian Sid

## XFCE
- proot-distro aliases: debian-sid-xfce
- Username: debian-xfce
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890

#### Install
    curl -fssL https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/debian-sid/xfce/bootstrap.sh | bash

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update
    sudo apt install -y firefox vlc thunderbird atril ristretto galculator libheif1 xarchiver webp-pixbuf-loader fonts-liberation p7zip mousepad
    sudo apt clean

## LXQt
- proot-distro aliases: debian-sid-lxqt
- Username: debian-lxqt
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890

#### Install
    curl -fssL https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/debian-sid/lxqt/bootstrap.sh | bash

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update
    sudo apt install -y firefox vlc thunderbird lximage-qt kcalc lxqt-archiver qpdfview libheif1 webp-pixbuf-loader fonts-liberation p7zip featherpad
    sudo apt clean

## MATE
- proot-distro aliases: debian-sid-mate
- Username: debian-mate
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890

#### Install
    curl -fssL https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/debian-sid/mate/bootstrap.sh | bash

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update
    sudo apt install -y firefox vlc thunderbird engrampa atril eom mate-calc pluma libheif1 webp-pixbuf-loader fonts-liberation p7zip
    sudo apt clean

## LXDE
- proot-distro aliases: debian-sid-lxde
- Username: debian-lxde
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890

#### Install
    curl -fssL https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/debian-sid/lxde/bootstrap.sh | bash

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update
    sudo apt install -y firefox vlc thunderbird xarchiver atril mousepad galculator gpicview libheif1 webp-pixbuf-loader fonts-liberation p7zip
    sudo apt clean

## Cinnamon (Heavy)
- proot-distro aliases: debian-sid-cinnamon
- Username: debian-cinnamon
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890

#### Install
    curl -fssL https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/debian-sid/cinnamon/bootstrap.sh | bash

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update
    sudo apt install -y firefox vlc thunderbird engrampa atril eom mate-calc pluma libheif1 webp-pixbuf-loader fonts-liberation p7zip
    sudo apt clean

## KDE Plasma (Heavy)
- proot-distro aliases: debian-sid-kde
- Username: debian-kde
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890

#### Install
    curl -fssL https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/debian-sid/kde/bootstrap.sh | bash

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update
    sudo apt install -y firefox vlc thunderbird okular gwenview kcalc ark kate libheif1 webp-pixbuf-loader fonts-liberation p7zip
    sudo apt clean

## Installing Chromium
    sudo sh -c "$(curl -fssL https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/debian/chromium-install.sh)"