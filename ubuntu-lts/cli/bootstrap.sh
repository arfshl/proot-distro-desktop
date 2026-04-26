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

# Install ubuntu under aliases
PD_OVERRIDE_TARBALL_URL="https://github.com/arfshl/pd-custom-rootfs/releases/download/ubuntu-lts/ubuntu-lts-$ARCH.tar.xz" PD_OVERRIDE_TARBALL_SHA256="" proot-distro install ubuntu --override-alias ubuntu-lts

echo 'To start command line session: proot-distro login ubuntu-lts'