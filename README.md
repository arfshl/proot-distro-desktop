# PRoot Distro Desktop
Collection of script for easy desktop environment installation on PRoot Distro minimal rootfs

Supported Desktop Environment:

- XFCE, MATE, LXQt, LXDE (stable and worked well)
- Cinnamon and KDE (A bit slow)

## You Need
- [Termux App](https://github.com/termux/termux-app/releases)
- [Termux:X11](https://github.com/termux/termux-x11/releases)
- [VNC Viewer](https://play.google.com/store/apps/details?id=com.realvnc.viewer.android)


| Distribution     | Desktop   |
|------------------|------------|
| [AlmaLinux Planned](https://github.com/arfshl/proot-distro-desktop/tree/main/el/alma) | XFCE MATE KDE   |
| [Alpine Linux](https://github.com/arfshl/proot-distro-desktop/tree/main/alpine) | XFCE LXQt MATE LXDE Cinnamon KDE |
| [Arch Linux (ARM)](https://github.com/arfshl/proot-distro-desktop/tree/main/arch) | XFCE LXQt MATE LXDE Cinnamon KDE |
| [Artix Linux](https://github.com/arfshl/proot-distro-desktop/tree/main/artix) | XFCE LXQt MATE LXDE Cinnamon KDE | 
| [Debian](https://github.com/arfshl/proot-distro-desktop/tree/main/debian) | XFCE LXQt MATE LXDE Cinnamon KDE |
| [Debian Sid planned](https://github.com/arfshl/proot-distro-desktop/tree/main/debian-sid) | CLI XFCE LXQt MATE LXDE Cinnamon KDE |
| [Debian Testing planned](https://github.com/arfshl/proot-distro-desktop/tree/main/debian-testing) | CLI XFCE LXQt MATE LXDE Cinnamon KDE |
| [Devuan planned](https://github.com/arfshl/proot-distro-desktop/tree/main/debian-testing) | CLI XFCE LXQt MATE LXDE Cinnamon KDE |
| [Fedora](https://github.com/arfshl/proot-distro-desktop/tree/main/fedora) (Fedora is not worked on Android 15+) | XFCE LXQt MATE LXDE Cinnamon KDE |
| [Linux Mint](https://github.com/arfshl/proot-distro-desktop/tree/main/linuxmint) (x86_64 with QEMU, Beta testing) | Cinnamon
| [Manjaro](https://github.com/arfshl/proot-distro-desktop/tree/main/manjaro) | XFCE LXQt MATE LXDE Cinnamon KDE | 
| [Oracle Linux planned](https://github.com/arfshl/proot-distro-desktop/tree/main/el/oracle) | XFCE MATE KDE   |
| [OpenSUSE](https://github.com/arfshl/proot-distro-desktop/tree/main/opensuse/)     |  XFCE LXQt MATE LXDE Cinnamon KDE   |
| [OpenSUSE Tumbleweed planned](https://github.com/arfshl/proot-distro-desktop/tree/main/opensuse-tumbleweed/)     |  CLI XFCE LXQt MATE LXDE Cinnamon KDE   |
| [Rocky Linux](https://github.com/arfshl/proot-distro-desktop/tree/main/el/rocky) | XFCE MATE KDE   |
| [Ubuntu Regular Release](https://github.com/arfshl/proot-distro-desktop/tree/main/ubuntu) | XFCE LXQt MATE LXDE Cinnamon KDE
| [Ubuntu LTS](https://github.com/arfshl/proot-distro-desktop/tree/main/ubuntu-lts) (Recommended for beginners) | CLI XFCE LXQt MATE LXDE Cinnamon KDE
| [Void Linux](https://github.com/arfshl/proot-distro-desktop/tree/main/void) | XFCE LXQt MATE LXDE Cinnamon KDE |

## Uninstalling
```
- Rootfs-only uninstall
#!/bin/sh
proot-distro remove [distro aliases]

rm /data/data/com.termux/files/usr/bin/[distro aliases]
rm /data/data/com.termux/files/usr/bin/[distro aliases]-x11

apt remove proot-distro termux-x11 pulseaudio vulkan-loader-android mesa-zink virglrenderer-mesa-zink virglrenderer-android -y && apt autoremove -y

apt remove x11-repo tur-repo -y && apt update


- Full Uninstall, including in-termux dependency
#!/bin/sh
proot-distro remove [distro aliases]

rm /data/data/com.termux/files/usr/bin/[distro aliases]
rm /data/data/com.termux/files/usr/bin/[distro aliases]-x11

apt remove proot-distro termux-x11 pulseaudio vulkan-loader-android mesa-zink virglrenderer-mesa-zink virglrenderer-android -y && apt autoremove -y

Replace [distro aliases] with distro alias you're using, available on installation page
```

## Custom rootfs build repo (for distro version who doesn`t supported by termux, arm64/aarch64 only)
[![Readme Card](https://github-readme-stats.vercel.app/api/pin/?username=arfshl&repo=pd-custom-rootfs&theme=transparent)](https://github.com/arfshl/pd-custom-rootfs)

## We also have Native Termux desktop version without proot-distro here!

[![Readme Card](https://github-readme-stats.vercel.app/api/pin/?username=arfshl&repo=termux-desktop&theme=transparent)](https://github.com/arfshl/termux-desktop)

# Credits

[andronixapp/andronixorigin](https://github.com/AndronixApp/AndronixOrigin) Inspiration for making this project, VNC startup mechanism, Licensed under MIT License.

[linuxmasterdroid/termux-desktops](https://github.com/LinuxDroidMaster/Termux-Desktops) Pulseaudio and Termux:X11 startup mechanism, Licensed under GPLv3.

Pulseaudio fix for One UI, [Issue #19623 on termux-packages](https://github.com/termux/termux-packages/issues/19623)
