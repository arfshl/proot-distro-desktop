# Ubuntu LTS


## XFCE (Reccomended for beginners)
- proot-distro aliases: ubuntu-lts-xfce
- Username: ubuntu-xfce
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/ubuntu-lts/xfce/bootstrap.sh && bash bootstrap.sh && rm bootstrap.sh

#### Install (daocloud mirror for china mainland)
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/ubuntu-lts/xfce/bootstrap-cn.sh && bash bootstrap-cn.sh && rm bootstrap-cn.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update && sudo apt install firefox vlc thunderbird atril ristretto galculator libheif1 xarchiver webp-pixbuf-loader fonts-liberation p7zip mousepad && apt clean

## LXQt
- proot-distro aliases: ubuntu-lts-lxqt
- Username: ubuntu-lxqt
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/ubuntu-lts/lxqt/bootstrap.sh && bash bootstrap.sh && rm bootstrap.sh

#### Install (daocloud mirror for china mainland)
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/ubuntu-lts/lxqt/bootstrap-cn.sh && bash bootstrap-cn.sh && rm bootstrap-cn.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update && sudo apt install firefox vlc thunderbird lximage-qt kcalc lxqt-archiver qpdfview libheif1 webp-pixbuf-loader fonts-liberation p7zip featherpad && apt clean

## MATE
- proot-distro aliases: ubuntu-lts-mate
- Username: ubuntu-mate
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/ubuntu-lts/mate/bootstrap.sh && bash bootstrap.sh && rm bootstrap.sh

#### Install (daocloud mirror for china mainland)
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/ubuntu-lts/mate/bootstrap-cn.sh && bash bootstrap-cn.sh && rm bootstrap-cn.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update && sudo apt install firefox vlc thunderbird engrampa atril eom mate-calc pluma libheif1 webp-pixbuf-loader fonts-liberation p7zip && apt clean

    
## LXDE 
- proot-distro aliases: ubuntu-lts-lxde
- Username: ubuntu-lxde
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/ubuntu-lts/lxde/bootstrap.sh && bash bootstrap.sh && rm bootstrap.sh

#### Install (daocloud mirror for china mainland)
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/ubuntu-lts/lxde/bootstrap-cn.sh && bash bootstrap-cn.sh && rm bootstrap-cn.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update && sudo apt install firefox vlc thunderbird xarchiver atril mousepad galculator gpicview libheif1 webp-pixbuf-loader fonts-liberation p7zip && apt clean


## Cinnamon (Heavy)
- proot-distro aliases: ubuntu-lts-cinnamon
- Username: ubuntu-cinnamon
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/ubuntu-lts/cinnamon/bootstrap.sh && bash bootstrap.sh && rm bootstrap.sh

#### Install (daocloud mirror for china mainland)
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/ubuntu-lts/cinnamon/bootstrap-cn.sh && bash bootstrap-cn.sh && rm bootstrap-cn.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update && sudo apt install firefox vlc thunderbird engrampa atril eom mate-calc pluma libheif1 webp-pixbuf-loader fonts-liberation p7zip && apt clean


## KDE Plasma (Heavy)
- proot-distro aliases: ubuntu-lts-kde
- Username: ubuntu-kde
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890

#### Install
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/ubuntu-lts/kde/bootstrap.sh && bash bootstrap.sh && rm bootstrap.sh

#### Install (daocloud mirror for china mainland)
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/ubuntu-lts/kde/bootstrap-cn.sh && bash bootstrap-cn.sh && rm bootstrap-cn.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update && sudo apt install firefox vlc thunderbird okular gwenview kcalc ark kate libheif1 webp-pixbuf-loader fonts-liberation p7zip && apt clean

## Installing Chromium-based web browser
It is reccomended to go here, and install listed browser: https://github.com/arfshl/prootdistro-chromium-installer

This script automates installation and desktop launcher patching, not only for Google Chrome but for other browser that supports ARM64, like Brave and Vivaldi

However if you prefer open-source chromium, you can still install it with this script

    sudo su
    
    curl -LO https://github.com/arfshl/proot-distro-desktop/raw/refs/heads/main/ubuntu/install-chromium.sh && bash install-chromium.sh && rm install-chromium.sh

## Disable apt Pager at Debian 13 or Ubuntu 26.04

       echo 'Binary::apt::Pager "false";' | sudo tee -a  /etc/apt/apt.conf.d/99nopager