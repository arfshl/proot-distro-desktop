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
    *)
        echo "Unsupported architecture: $ARCH"
        exit 1
        ;;
esac

# install depedency
termux-setup-storage
apt update
apt install x11-repo tur-repo
apt update

# Update installed package but keep configuration
apt upgrade -y -o Dpkg::Options::="--force-confold"

# Install depedency
apt install curl wget nano proot-distro termux-x11 pulseaudio vulkan-loader-android mesa-zink virglrenderer-mesa-zink virglrenderer-android -y


# Install debian under aliases
PD_OVERRIDE_TARBALL_URL="https://github.com/arfshl/pd-custom-rootfs/releases/download/debian-sid/debian-sid-$ARCH.tar.xz" PD_OVERRIDE_TARBALL_SHA256="" proot-distro install debian --override-alias debian-sid

echo 'To start command line session: proot-distro login debian-sid'