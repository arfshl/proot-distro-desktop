#!/bin/sh
# Install x11 and tur repo
ARCH=$(uname -m)
case "$ARCH" in
    armhf|arm|armv7l) 
        ARCH="armv7" 
        ;;
    aarch64|arm64)
        ARCH="aarch64" 
        ;;
    x86_64|amd64)
        ARCH="x86_64"
        ;;
    x86|i686)
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

# Create startup script
# for CLI session
echo '#!/bin/sh
LD_PRELOAD=/system/lib64/libskcodec.so
pulseaudio --start --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" --exit-idle-time=-1
proot-distro login alpine-edge-xfce --user alpine-edge-xfce' >> /data/data/com.termux/files/usr/bin/alpine-edge-xfce

# for X11 session
cat <<'EOF' > /data/data/com.termux/files/usr/bin/alpine-edge-xfce-x11
#!/bin/sh
LD_PRELOAD=/system/lib64/libskcodec.so
pulseaudio --start --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" --exit-idle-time=-1
export XDG_RUNTIME_DIR=${TMPDIR}
kill -9 $(pgrep -f "termux.x11") 2>/dev/null
kill -9 $(pgrep -f "virgl") 2>/dev/null
proot-distro login alpine-edge-xfce --shared-tmp -- /bin/sh -c 'pkill -x -9 x11 2>/dev/null'
virgl_test_server_android &
termux-x11 :0 >/dev/null &
sleep 3
proot-distro login alpine-edge-xfce --shared-tmp -- /bin/sh -c 'export PULSE_SERVER=127.0.0.1 && export XDG_RUNTIME_DIR=${TMPDIR} && su - alpine-edge-xfce -c "DISPLAY=:0 GALLIUM_DRIVER=virpipe dbus-launch --exit-with-session startxfce4"'
EOF

# Make all of them executable
chmod +x /data/data/com.termux/files/usr/bin/alpine-edge-xfce*

# Install alpine under aliases
PD_OVERRIDE_TARBALL_URL="https://github.com/arfshl/pd-custom-rootfs/releases/download/alpine-edge/alpine-edge-${ARCH}.tar.xz" PD_OVERRIDE_TARBALL_SHA256="" proot-distro install alpine --override-alias alpine-edge-xfce

# Setup alpine-edge-xfce
proot-distro login alpine-edge-xfce -- /bin/sh -c 'apk -U upgrade && apk add wget'

proot-distro login alpine-edge-xfce -- /bin/sh -c 'wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/alpine/xfce/install.sh -O install.sh && chmod +x install.sh && ./install.sh'

echo 'To start command line session: alpine-edge-xfce'
echo 'To start X11 session: alpine-edge-xfce-x11'
echo 'To start VNC server: startvnc'
echo 'To stop VNC server: stopvnc'
echo 'To restart VNC server: restartvnc'
echo 'Default user: alpine-edge-xfce'
echo 'Default password: 123'    
echo 'VNC server address: 127.0.0.1:5900'
echo 'Default VNC password: 1234567890'
rm -- "$0"
