# Linux Mint (Heavy, x86_64 with QEMU, Beta testing)

## Cinnamon (Heavy)
- proot-distro aliases: linuxmint-cinnamon
- Username: linuxmint-cinnamon
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/linuxmint/cinnamon/bootstrap.sh && sh bootstrap.sh && rm bootstrap.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update && sudo apt install firefox vlc thunderbird engrampa xreader xviewer mate-calc xed pix xplayer libheif1 webp-pixbuf-loader fonts-liberation p7zip && apt clean