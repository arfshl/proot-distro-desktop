# OpenSUSE

## XFCE
- proot-distro aliases: opensuse-xfce
- Username: opensuse-xfce
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/opensuse/xfce/bootstrap.sh && sh bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo zypper  in  firefox  vlc thunderbird  libheif1 webp-pixbuf-loader p7zip atril ristretto galculator xarchiver mousepad 

#### Remove (rootfs only)
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/opensuse/xfce/remove-rootfs.sh && sh remove-rootfs.sh && rm remove-rootfs.sh
#### Remove (full)
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/opensuse/xfce/remove-full.sh && sh remove-full.sh && rm remove-full.sh

## MATE
- proot-distro aliases: opensuse-mate
- Username: opensuse-mate
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/opensuse/mate/bootstrap.sh && sh bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo zypper  in firefox  vlc thunderbird  libheif1 webp-pixbuf-loader p7zip atril eom mate-calc engrampa pluma

#### Remove (rootfs only)
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/opensuse/mate/remove-rootfs.sh && sh remove-rootfs.sh && rm remove-rootfs.sh
#### Remove (rootfs only)
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/opensuse/mate/remove-rootfs.sh && sh remove-rootfs.sh && rm remove-rootfs.sh


## LXQt
- proot-distro aliases: opensuse-lxqt
- Username: opensuse-lxqt
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/opensuse/lxqt/bootstrap.sh && sh bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo zypper  in firefox  vlc thunderbird  libheif1 webp-pixbuf-loader p7zip lximage-qt kcalc lxqt-archiver qpdfview featherpad

#### Remove (rootfs only)
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/opensuse/lxqt/remove-rootfs.sh && sh remove-rootfs.sh && rm remove-rootfs.sh
#### Remove (rootfs only)
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/opensuse/lxqt/remove-rootfs.sh && sh remove-rootfs.sh && rm remove-rootfs.sh

    
## LXDE
- proot-distro aliases: opensuse-lxde
- Username: opensuse-lxde
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/opensuse/lxde/bootstrap.sh && sh bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo zypper  in firefox  vlc thunderbird  libheif1 webp-pixbuf-loader p7zip atril gpicview galculator xarchiver mousepad 

#### Remove (rootfs only)
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/opensuse/lxde/remove-rootfs.sh && sh remove-rootfs.sh && rm remove-rootfs.sh
#### Remove (rootfs only)
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/opensuse/lxde/remove-rootfs.sh && sh remove-rootfs.sh && rm remove-rootfs.sh

## Cinnamon
- proot-distro aliases: opensuse-cinnamon
- Username: opensuse-cinnamon
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/opensuse/cinnamon/bootstrap.sh && sh bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo zypper  in firefox  vlc thunderbird  libheif1 webp-pixbuf-loader p7zip engrampa atril eom mate-calc pluma

#### Remove (rootfs only)
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/opensuse/cinnamon/remove-rootfs.sh && sh remove-rootfs.sh && rm remove-rootfs.sh
#### Remove (rootfs only)
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/opensuse/cinnamon/remove-rootfs.sh && sh remove-rootfs.sh && rm remove-rootfs.sh

## KDE Plasma (Heavy)
- proot-distro aliases: opensuse-kde
- Username: opensuse-kde
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890

#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/opensuse/kde/bootstrap.sh && sh bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
     sudo zypper  in firefox  vlc thunderbird  libheif1 webp-pixbuf-loader p7zip okular gwenview kcalc ark kate
#### Remove (rootfs only)
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/opensuse/kde/remove-rootfs.sh && sh remove-rootfs.sh && rm remove-rootfs.sh
#### Remove (full)
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/opensuse/kde/remove-full.sh && sh remove-full.sh && rm remove-full.sh

## Installing Chromium
    sudo su && wget https://github.com/arfshl/proot-distro-desktop/raw/refs/heads/main/opensuse/install-chromium.sh && sh install-chromium.sh && rm install-chromium.sh
