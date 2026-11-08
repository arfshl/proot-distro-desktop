# Kali Rolling + Nethunter

## Installed Metapackage
- `kali-linux-headless`
- `kali-nethunter-core`
- `kali-nethunter-nano`

## XFCE
- proot-distro aliases: kali-xfce
- Username: kali-xfce
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890

#### Install
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/kali/xfce/bootstrap.sh && bash bootstrap.sh && rm bootstrap.sh

#### Install (daocloud mirror for china mainland)
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/kali/xfce/bootstrap-cn.sh && bash bootstrap-cn.sh && rm bootstrap-cn.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update
    sudo apt install -y firefox vlc thunderbird atril ristretto galculator libheif1 xarchiver webp-pixbuf-loader fonts-liberation p7zip mousepad
    sudo apt clean

## LXQt
- proot-distro aliases: kali-lxqt
- Username: kali-lxqt
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890

#### Install
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/kali/lxqt/bootstrap.sh && bash bootstrap.sh && rm bootstrap.sh

#### Install (daocloud mirror for china mainland)
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/kali/lxqt/bootstrap-cn.sh && bash bootstrap-cn.sh && rm bootstrap-cn.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update
    sudo apt install -y firefox vlc thunderbird lximage-qt kcalc lxqt-archiver qpdfview libheif1 webp-pixbuf-loader fonts-liberation p7zip featherpad
    sudo apt clean

## MATE
- proot-distro aliases: kali-mate
- Username: kali-mate
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890

#### Install
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/kali/mate/bootstrap.sh && bash bootstrap.sh && rm bootstrap.sh

#### Install (daocloud mirror for china mainland)
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/kali/mate/bootstrap-cn.sh && bash bootstrap-cn.sh && rm bootstrap-cn.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update
    sudo apt install -y firefox vlc thunderbird engrampa atril eom mate-calc pluma libheif1 webp-pixbuf-loader fonts-liberation p7zip
    sudo apt clean

## LXDE
- proot-distro aliases: kali-lxde
- Username: kali-lxde
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890

#### Install
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/kali/lxde/bootstrap.sh && bash bootstrap.sh && rm bootstrap.sh

#### Install (daocloud mirror for china mainland)
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/kali/lxde/bootstrap-cn.sh && bash bootstrap-cn.sh && rm bootstrap-cn.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update
    sudo apt install -y firefox vlc thunderbird xarchiver atril mousepad galculator gpicview libheif1 webp-pixbuf-loader fonts-liberation p7zip
    sudo apt clean

## Cinnamon (Heavy)
- proot-distro aliases: kali-cinnamon
- Username: kali-cinnamon
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890

#### Install
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/kali/cinnamon/bootstrap.sh && bash bootstrap.sh && rm bootstrap.sh

#### Install (daocloud mirror for china mainland)
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/kali/cinnamon/bootstrap-cn.sh && bash bootstrap-cn.sh && rm bootstrap-cn.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update
    sudo apt install -y firefox vlc thunderbird engrampa atril eom mate-calc pluma libheif1 webp-pixbuf-loader fonts-liberation p7zip
    sudo apt clean

## Installing Chromium-based web browser
It is reccomended to go here, and install listed browser: https://github.com/arfshl/prootdistro-chromium-installer

This script automates installation and desktop launcher patching, not only for Google Chrome but for other browser that supports ARM64, like Brave and Vivaldi

However if you prefer open-source chromium, you can still install it with this script

    sudo su
    
    curl -LO https://github.com/arfshl/proot-distro-desktop/raw/refs/heads/main/debian/install-chromium.sh && bash install-chromium.sh && rm install-chromium.sh

## Disable apt Pager at Debian 13 or Ubuntu 26.04
    echo 'Binary::apt::Pager "false";' | sudo tee -a /etc/apt/apt.conf.d/99nopager