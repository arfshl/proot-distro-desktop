# OpenSUSE Tumbleweed

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