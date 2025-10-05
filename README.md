# PRoot Distro Desktop
Collection of script for easy desktop environment installation on PRoot Distro minimal rootfs

Supported Desktop Environment:

- XFCE, MATE, LXQt, LXDE (stable and worked well)
- Cinnamon (A bit slow)
- KDE (A bit slow, doesn't available on Ubuntu)

## You Need
- [Termux App](https://github.com/termux/termux-app/releases)
- [Termux:X11](https://github.com/termux/termux-x11/releases)
- [VNC Viewer](https://play.google.com/store/apps/details?id=com.realvnc.viewer.android)


| Distribution     | Desktop   |
|------------------|------------|
| [Alpine Linux (Planned)](https://github.com/arfshl/proot-distro-desktop/tree/main/alpine) | XFCE
| [Arch Linux (ARM)](https://github.com/arfshl/proot-distro-desktop/tree/main/arch) | XFCE LXQt MATE LXDE Cinnamon KDE |
| [Artix Linux](https://github.com/arfshl/proot-distro-desktop/tree/main/artix) | XFCE LXQt MATE LXDE Cinnamon KDE | 
| [Debian](https://github.com/arfshl/proot-distro-desktop/tree/main/debian) | XFCE LXQt MATE LXDE Cinnamon KDE |
| [Fedora](https://github.com/arfshl/proot-distro-desktop/tree/main/fedora) (Fedora is not worked on Android 15+) | XFCE LXQt MATE LXDE Cinnamon KDE |
| [Linux Mint](https://github.com/arfshl/proot-distro-desktop/tree/main/linuxmint) (x86_64 with QEMU, Beta testing) | Cinnamon
| [Manjaro](https://github.com/arfshl/proot-distro-desktop/tree/main/manjaro) | XFCE LXQt MATE LXDE Cinnamon KDE | 
| [OpenSUSE](https://github.com/arfshl/proot-distro-desktop/tree/main/opensuse/)     |  XFCE LXQt MATE LXDE Cinnamon KDE   |
| [Rocky Linux](https://github.com/arfshl/proot-distro-desktop/tree/main/el/rocky) | XFCE MATE KDE   |
| [Ubuntu](https://github.com/arfshl/proot-distro-desktop/tree/main/ubuntu) (Recommended for beginners) | XFCE LXQt MATE LXDE Cinnamon
| [Void Linux (Planned)](https://github.com/arfshl/proot-distro-desktop/tree/main/void) | XFCE

## We also have Native Termux desktop version without proot-distro here!

[![Readme Card](https://github-readme-stats.vercel.app/api/pin/?username=arfshl&repo=termux-desktop&theme=transparent)](https://github.com/arfshl/termux-desktop)

# Credits

[andronixapp/andronixorigin](https://github.com/AndronixApp/AndronixOrigin) Inspiration for making this project, VNC startup mechanism, Licensed under MIT License.

[linuxmasterdroid/termux-desktops](https://github.com/LinuxDroidMaster/Termux-Desktops) Pulseaudio and Termux:X11 startup mechanism, Licensed under GPLv3.

Pulseaudio fix for One UI, [Issue #19623 on termux-packages](https://github.com/termux/termux-packages/issues/19623)
