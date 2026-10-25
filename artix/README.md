# Artix Linux

## XFCE
- proot-distro aliases: artix-xfce
- Username: arch-xfce
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890

#### Install
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/artix/xfce/bootstrap.sh && bash bootstrap.sh && rm bootstrap.sh

#### Install (daocloud mirror for china mainland)
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/artix/xfce/bootstrap-cn.sh && bash bootstrap-cn.sh && rm bootstrap-cn.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo pacman -Sy --needed firefox vlc thunderbird libheif webp-pixbuf-loader p7zip atril ristretto galculator xarchiver mousepad

## MATE
- proot-distro aliases: artix-mate
- Username: arch-mate
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890

#### Install
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/artix/mate/bootstrap.sh && bash bootstrap.sh && rm bootstrap.sh

#### Install (daocloud mirror for china mainland)
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/artix/mate/bootstrap-cn.sh && bash bootstrap-cn.sh && rm bootstrap-cn.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo pacman -Sy --needed firefox vlc thunderbird libheif webp-pixbuf-loader p7zip atril eom mate-calc engrampa pluma

## LXQt
- proot-distro aliases: artix-lxqt
- Username: artch-lxqt
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890

#### Install
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/artix/lxqt/bootstrap.sh && bash bootstrap.sh && rm bootstrap.sh

#### Install (daocloud mirror for china mainland)
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/artix/lxqt/bootstrap-cn.sh && bash bootstrap-cn.sh && rm bootstrap-cn.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo pacman -Sy --needed firefox vlc thunderbird libheif webp-pixbuf-loader p7zip lximage-qt kcalc lxqt-archiver qpdfview featherpad

## LXDE
- proot-distro aliases: artix-lxde
- Username: arch-lxde
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890

#### Install
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/artix/lxde/bootstrap.sh && bash bootstrap.sh && rm bootstrap.sh

#### Install (daocloud mirror for china mainland)
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/artix/lxde/bootstrap-cn.sh && bash bootstrap-cn.sh && rm bootstrap-cn.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo pacman -Sy --needed firefox vlc thunderbird libheif webp-pixbuf-loader p7zip atril gpicview galculator xarchiver mousepad

## Cinnamon
- proot-distro aliases: artix-cinnamon
- Username: arch-cinnamon
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890

#### Install
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/artix/cinnamon/bootstrap.sh && bash bootstrap.sh && rm bootstrap.sh

#### Install (daocloud mirror for china mainland)
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/artix/cinnamon/bootstrap-cn.sh && bash bootstrap-cn.sh && rm bootstrap-cn.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo pacman -Sy --needed firefox vlc thunderbird libheif webp-pixbuf-loader p7zip engrampa xreader mate-calc xed eom

## KDE Plasma (Heavy)
- proot-distro aliases: artix-kde
- Username: arch-kde
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890

#### Install
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/artix/kde/bootstrap.sh && bash bootstrap.sh && rm bootstrap.sh

#### Install (daocloud mirror for china mainland)
    curl -LO https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/artix/kde/bootstrap-cn.sh && bash bootstrap-cn.sh && rm bootstrap-cn.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo pacman -Sy --needed firefox vlc thunderbird libheif webp-pixbuf-loader p7zip okular gwenview kcalc ark kate

## Installing Chromium
    sudo su
    
    curl -LO https://github.com/arfshl/proot-distro-desktop/raw/refs/heads/main/void/install-chromium.sh && bash install-chromium.sh && rm install-chromium.sh