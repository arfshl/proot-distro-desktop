# Fedora

## XFCE
- proot-distro aliases: fedora-xfce
- Username: fedora-xfce
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/fedora/xfce/bootstrap.sh && sh bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo dnf update && sudo dnf install firefox vlc thunderbird atril ristretto galculator libheif xarchiver webp-pixbuf-loader p7zip mousepad 

## LXQt
- proot-distro aliases: fedora-lxqt
- Username: fedora-lxqt
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/fedora/lxqt/bootstrap.sh && sh bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo dnf update && sudo dnf install firefox vlc thunderbird lximage-qt kcalc lxqt-archiver qpdf libheif webp-pixbuf-loader p7zip featherpad 


## MATE
- proot-distro aliases: fedora-mate
- Username: fedora-mate
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/fedora/mate/bootstrap.sh && sh bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo dnf update && sudo dnf install firefox vlc thunderbird engrampa atril eom mate-calc pluma libheif webp-pixbuf-loader p7zip 

    
## LXDE 
- proot-distro aliases: fedora-lxde
- Username: fedora-lxde
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/fedora/lxde/bootstrap.sh && sh bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo dnf update && sudo dnf install firefox vlc thunderbird xarchiver atril mousepad galculator gpicview libheif webp-pixbuf-loader p7zip 


## Cinnamon (Heavy)
- proot-distro aliases: fedora-cinnamon
- Username: fedora-cinnamon
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/fedora/cinnamon/bootstrap.sh && sh bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo dnf update && sudo dnf install firefox vlc thunderbird engrampa atril eom mate-calc pluma libheif webp-pixbuf-loader p7zip 

## KDE Plasma (Heavy)
- proot-distro aliases: fedora-kde
- Username: fedora-kde
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/fedora/kde/bootstrap.sh && sh bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo dnf update && sudo dnf install firefox vlc thunderbird gwenview kcalc ark okular libheif webp-pixbuf-loader p7zip kate

## Installing Chromium
    sudo su && wget https://github.com/arfshl/proot-distro-desktop/raw/refs/heads/main/el/install-chromium.sh && sh install-chromium.sh && rm install-chromium.sh
