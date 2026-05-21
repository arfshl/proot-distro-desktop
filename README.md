# PRoot Distro Desktop
Script to install desktop environment for PRoot Distro.

Supported Desktop Environment:

- XFCE, MATE, LXQt, LXDE (stable and worked well)
- Cinnamon and KDE (A bit slow)

## You Need
- [Termux App](https://github.com/termux/termux-app/releases)
- [Termux:X11](https://github.com/termux/termux-x11/releases)
- [VNC Viewer](https://play.google.com/store/apps/details?id=com.realvnc.viewer.android)


| Distribution     | Flavor/Desktop Environment | Supported CPU Arch | Docker Registry |
|------------------|----------------------------|----------------|-----------------|
| [Alpine Linux](https://github.com/arfshl/proot-distro-desktop/tree/main/alpine) | XFCE LXQt MATE Cinnamon KDE | `arm` `aarch64` `x86` `x86_64` | `alpine:latest` |
| [Alpine Linux Edge](https://github.com/arfshl/proot-distro-desktop/tree/main/alpine-edge) |  XFCE LXQt MATE Cinnamon KDE | `arm` `aarch64` `x86` `x86_64` | `alpine:edge` |
| [Arch Linux](https://github.com/arfshl/proot-distro-desktop/tree/main/arch) | XFCE LXQt MATE LXDE Cinnamon KDE | `arm` `aarch64` `x86_64` | `archlinux/archlinux` `ghcr.io/arfshl/archlinuxarm-docker:latest` |
| [Debian Stable](https://github.com/arfshl/proot-distro-desktop/tree/main/debian) (Recommended for beginners) | XFCE LXQt MATE LXDE Cinnamon KDE | `arm` `aarch64` `x86_64` | `debian:stable` |
| [Debian Sid](https://github.com/arfshl/proot-distro-desktop/tree/main/debian-sid) |  XFCE LXQt MATE LXDE Cinnamon KDE | `arm` `aarch64` `x86_64` | `debian:sid` |
| [Debian Testing](https://github.com/arfshl/proot-distro-desktop/tree/main/debian-testing) |  XFCE LXQt MATE LXDE Cinnamon KDE | `arm` `aarch64` `x86_64` | `debian:testing` |
| [Fedora](https://github.com/arfshl/proot-distro-desktop/tree/main/fedora) | XFCE LXQt MATE LXDE Cinnamon KDE | `aarch64` `x86_64` | `fedora:latest` |
| [Manjaro](https://github.com/arfshl/proot-distro-desktop/tree/main/manjaro) | XFCE LXQt MATE LXDE Cinnamon KDE | `aarch64` `x86_64` | `manjarolinux/base` | 
| [OpenSUSE Leap](https://github.com/arfshl/proot-distro-desktop/tree/main/opensuse/) |  XFCE LXQt MATE LXDE Cinnamon KDE   | `aarch64` `x86_64` | `opensuse/leap` |
| [OpenSUSE Tumbleweed](https://github.com/arfshl/proot-distro-desktop/tree/main/opensuse-tumbleweed/)     |   XFCE LXQt MATE LXDE Cinnamon KDE   | `aarch64` `x86` `x86_64` | `opensuse/tumbleweed` |
| [Trisquel GNU/Linux Libre](https://github.com/arfshl/proot-distro-desktop/tree/main/trisquel) | XFCE LXQt MATE LXDE Cinnamon KDE | `arm` `aarch64` `x86_64` | `ghcr.io/arfshl/trisquel-docker:latest` |
| [Ubuntu Regular Release](https://github.com/arfshl/proot-distro-desktop/tree/main/ubuntu) | XFCE LXQt MATE LXDE Cinnamon KDE | `arm` `aarch64` `x86_64` | `ubuntu:rolling` |
| [Ubuntu LTS](https://github.com/arfshl/proot-distro-desktop/tree/main/ubuntu-lts) (Recommended for beginners) |  XFCE LXQt MATE LXDE Cinnamon KDE | `arm` `aarch64` `x86_64` | `ubuntu:latest` |
| [Void Linux musl libc](https://github.com/arfshl/proot-distro-desktop/tree/main/void) | XFCE LXQt MATE LXDE Cinnamon KDE | `arm` `aarch64` `x86_64` | `ghcr.io/void-linux/void-musl:latest` |

## Uninstalling
```
- Rootfs-only uninstall
#!/bin/sh
proot-distro remove [distro aliases]

rm /data/data/com.termux/files/usr/bin/[distro aliases]
rm /data/data/com.termux/files/usr/bin/[distro aliases]-x11


- Full Uninstall, including in-termux dependency
#!/bin/sh
proot-distro remove [distro aliases]

rm /data/data/com.termux/files/usr/bin/[distro aliases]
rm /data/data/com.termux/files/usr/bin/[distro aliases]-x11

apt remove proot-distro termux-x11 pulseaudio vulkan-loader-android mesa-zink virglrenderer-mesa-zink virglrenderer-android -y && apt autoremove -y

Replace [distro aliases] with distro alias you're using, available on installation page
```

## Support for android 5/6 without proot-distro, based on andronixapp/andronixorigin, and running latest distro version
[![Readme Card](https://github-readme-stats-fast.vercel.app/api/pin/?username=arfshl&repo=pd-andronix&theme=transparent)](https://github.com/arfshl/pd-andronix)

## Custom rootfs build repo for android 5/6
[![Readme Card](https://github-readme-stats-fast.vercel.app/api/pin/?username=arfshl&repo=pd-custom-rootfs&theme=transparent)](https://github.com/arfshl/pd-custom-rootfs)

## We also have Native Termux desktop version without proot-distro here!
[![Readme Card](https://github-readme-stats-fast.vercel.app/api/pin/?username=arfshl&repo=termux-desktop&theme=transparent)](https://github.com/arfshl/termux-desktop)

# Credits

[andronixapp/andronixorigin](https://github.com/AndronixApp/AndronixOrigin) Inspiration for making this project, VNC startup mechanism, Licensed under MIT License.

[linuxmasterdroid/termux-desktops](https://github.com/LinuxDroidMaster/Termux-Desktops) Pulseaudio and Termux:X11 startup mechanism, Licensed under GPLv3.

Pulseaudio fix for One UI, [Issue #19623 on termux-packages](https://github.com/termux/termux-packages/issues/19623)
