#!/bin/sh
ARCH=$(uname -m)
case "$ARCH" in
    armhf|arm|armv7l) 
        ARCH="arm" 
        ;;
    aarch64|arm64)
        ARCH="aarch64" 
        ;;
    x86_64|amd64)
        ARCH="x86_64"
        ;;
    i386|x86|i686)
        ARCH="x86"
        ;;
    *)
        echo "Unsupported architecture: $ARCH"
        exit 1
        ;;
esac
termux-setup-storage
apt update
apt install x11-repo tur-repo
apt update

# Update installed package but keep configuration
apt upgrade -y -o Dpkg::Options::="--force-confold"

# Install depedency
apt install curl wget nano proot-distro termux-x11 pulseaudio vulkan-loader-android mesa-zink virglrenderer-mesa-zink virglrenderer-android -y

PD_OVERRIDE_TARBALL_URL="https://github.com/arfshl/pd-custom-rootfs/releases/download/opensuse-tumbleweed/opensuse-tumbleweed-$ARCH.tar.xz" PD_OVERRIDE_TARBALL_SHA256="" proot-distro install opensuse --override-alias opensuse-tumbleweed

echo 'To start command line session: proot-distro login opensuse-tumbleweed'
