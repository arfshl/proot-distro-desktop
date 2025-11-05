# OpenSUSE Tumbleweed

## CLI-only (without desktop
- proot-distro aliases: opensuse-tumbleweed

      PD_OVERRIDE_TARBALL_URL="https://github.com/arfshl/pd-custom-rootfs/releases/download/opensuse-tumbleweed/opensuse-tumbleweed-aarch64.tar.xz" PD_OVERRIDE_TARBALL_SHA256="" proot-distro install opensuse --override-alias opensuse-tumbleweed

## XFCE
- proot-distro aliases: opensuse-tumbleweed-xfce
- Username: opensuse-xfce
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/opensuse-tumbleweed/xfce/bootstrap.sh && sh bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo zypper  in  firefox  vlc thunderbird  libheif1 webp-pixbuf-loader p7zip atril ristretto galculator xarchiver mousepad 

## MATE
- proot-distro aliases: opensuse-tumbleweed-mate
- Username: opensuse-mate
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/opensuse-tumbleweed/mate/bootstrap.sh && sh bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo zypper  in firefox  vlc thunderbird  libheif1 webp-pixbuf-loader p7zip atril eom mate-calc engrampa pluma

## LXQt
- proot-distro aliases: opensuse-tumbleweed-lxqt
- Username: opensuse-lxqt
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/opensuse-tumbleweed/lxqt/bootstrap.sh && sh bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo zypper  in firefox  vlc thunderbird  libheif1 webp-pixbuf-loader p7zip lximage-qt kcalc lxqt-archiver qpdfview featherpad

    
## LXDE
- proot-distro aliases: opensuse-tumbleweed-lxde
- Username: opensuse-lxde
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/opensuse-tumbleweed/lxde/bootstrap.sh && sh bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo zypper  in firefox  vlc thunderbird  libheif1 webp-pixbuf-loader p7zip atril gpicview galculator xarchiver mousepad 

## Cinnamon
- proot-distro aliases: opensuse-tumbleweed-cinnamon
- Username: opensuse-cinnamon
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/opensuse-tumbleweed/cinnamon/bootstrap.sh && sh bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo zypper  in firefox  vlc thunderbird  libheif1 webp-pixbuf-loader p7zip engrampa atril eom mate-calc pluma


## KDE Plasma (Heavy)
- proot-distro aliases: opensuse-tumbleweed-kde
- Username: opensuse-kde
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890

#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/opensuse-tumbleweed/kde/bootstrap.sh && sh bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
     sudo zypper  in firefox  vlc thunderbird  libheif1 webp-pixbuf-loader p7zip okular gwenview kcalc ark kate

## Installing Chromium
    sudo su && wget https://github.com/arfshl/proot-distro-desktop/raw/refs/heads/main/opensuse-tumbleweed/install-chromium.sh && sh install-chromium.sh && rm install-chromium.sh
