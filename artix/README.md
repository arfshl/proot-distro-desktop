# Artix Linux

## XFCE
- proot-distro aliases: artix-xfce
- Username: arch-xfce
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/artix/xfce/bootstrap.sh && sh bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo pacman -Sy --needed  firefox  vlc thunderbird  libheif webp-pixbuf-loader p7zip atril ristretto galculator xartixiver mousepad 

#### Remove (rootfs only)
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/artix/xfce/remove-rootfs.sh && sh remove-rootfs.sh && rm remove-rootfs.sh
#### Remove (full)
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/artix/xfce/remove-full.sh && sh remove-full.sh && rm remove-full.sh    

## MATE
- proot-distro aliases: artix-mate
- Username: arch-mate
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/artix/mate/bootstrap.sh && sh bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo pacman -Sy --needed firefox  vlc thunderbird  libheif webp-pixbuf-loader p7zip atril eom mate-calc engrampa pluma

#### Remove (rootfs only)
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/artix/mate/remove-rootfs.sh && sh remove-rootfs.sh && rm remove-rootfs.sh
#### Remove (rootfs only)
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/artix/mate/remove-rootfs.sh && sh remove-rootfs.sh && rm remove-rootfs.sh


## LXQt
- proot-distro aliases: artix-lxqt
- Username: artch-lxqt
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/artix/lxqt/bootstrap.sh && sh bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo pacman -Sy --needed firefox  vlc thunderbird  libheif webp-pixbuf-loader p7zip lximage-qt kcalc lxqt-artixiver qpdfview featherpad

#### Remove (rootfs only)
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/artix/lxqt/remove-rootfs.sh && sh remove-rootfs.sh && rm remove-rootfs.sh
#### Remove (rootfs only)
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/artix/lxqt/remove-rootfs.sh && sh remove-rootfs.sh && rm remove-rootfs.sh

    
## LXDE
- proot-distro aliases: artix-lxde
- Username: arch-lxde
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/artix/lxde/bootstrap.sh && sh bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo pacman -Sy --needed firefox  vlc thunderbird  libheif webp-pixbuf-loader p7zip atril gpicview galculator xartixiver mousepad 

#### Remove (rootfs only)
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/artix/lxde/remove-rootfs.sh && sh remove-rootfs.sh && rm remove-rootfs.sh
#### Remove (rootfs only)
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/artix/lxde/remove-rootfs.sh && sh remove-rootfs.sh && rm remove-rootfs.sh

## Cinnamon
- proot-distro aliases: artix-cinnamon
- Username: arch-cinnamon
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/artix/cinnamon/bootstrap.sh && sh bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo pacman -Sy --needed firefox vlc thunderbird libheif webp-pixbuf-loader p7zip engrampa xreader mate-calc xed eom

#### Remove (rootfs only)
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/artix/cinnamon/remove-rootfs.sh && sh remove-rootfs.sh && rm remove-rootfs.sh
#### Remove (rootfs only)
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/artix/cinnamon/remove-rootfs.sh && sh remove-rootfs.sh && rm remove-rootfs.sh

## KDE Plasma (Heavy)
- proot-distro aliases: artix-kde
- Username: arch-kde
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890

#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/artix/kde/bootstrap.sh && sh bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
     sudo pacman -Sy --needed firefox  vlc thunderbird  libheif webp-pixbuf-loader p7zip okular gwenview kcalc ark kate
#### Remove (rootfs only)
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/artix/kde/remove-rootfs.sh && sh remove-rootfs.sh && rm remove-rootfs.sh
#### Remove (full)
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/artix/kde/remove-full.sh && sh remove-full.sh && rm remove-full.sh

## Installing Chromium
    sudo su && wget https://github.com/arfshl/proot-distro-desktop/raw/refs/heads/main/artix/install-chromium.sh && sh install-chromium.sh && rm install-chromium.sh
