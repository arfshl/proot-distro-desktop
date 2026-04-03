# Devuan Stable 

## XFCE
- proot-distro aliases: devuan-xfce
- Username: devuan-xfce
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/devuan/xfce/bootstrap.sh && sh bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update && sudo apt install firefox vlc thunderbird atril ristretto galculator libheif1 xarchiver webp-pixbuf-loader fonts-liberation p7zip mousepad && apt clean


## LXQt
- proot-distro aliases: devuan-lxqt
- Username: devuan-lxqt
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/devuan/lxqt/bootstrap.sh && sh bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update && sudo apt install firefox vlc thunderbird lximage-qt kcalc lxqt-archiver qpdfview libheif1 webp-pixbuf-loader fonts-liberation p7zip featherpad && apt clean

## MATE
- proot-distro aliases: devuan-mate
- Username: devuan-mate
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/devuan/mate/bootstrap.sh && sh bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update && sudo apt install firefox vlc thunderbird engrampa atril eom mate-calc pluma libheif1 webp-pixbuf-loader fonts-liberation p7zip && apt clean

    
## LXDE 
- proot-distro aliases: devuan-lxde
- Username: devuan-lxde
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/devuan/lxde/bootstrap.sh && sh bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update && sudo apt install firefox vlc thunderbird xarchiver atril mousepad galculator gpicview libheif1 webp-pixbuf-loader fonts-liberation p7zip && apt clean



## Cinnamon (Heavy)
- proot-distro aliases: devuan-cinnamon
- Username: devuan-cinnamon
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/devuan/cinnamon/bootstrap.sh && sh bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update && sudo apt install firefox vlc thunderbird engrampa atril eom mate-calc pluma libheif1 webp-pixbuf-loader fonts-liberation p7zip && apt clean

## KDE Plasma (Heavy)
- proot-distro aliases: devuan-kde
- Username: devuan-kde
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890

#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/devuan/kde/bootstrap.sh && sh bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update && sudo apt install firefox vlc thunderbird okular gwenview kcalc ark kate libheif1 webp-pixbuf-loader fonts-liberation p7zip && apt clean


## Installing Chromium
    sudo su && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/devuan/chromium-install.sh && sh chromium-install.sh && rm chromium-install.sh

## Disable apt Pager at excalibur and upwards

      echo 'Binary::apt::Pager "false";' | sudo tee -a  /etc/apt/apt.conf.d/99nopager
