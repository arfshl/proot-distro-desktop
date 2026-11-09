#!/usr/bin/env bash
set -euo pipefail
# Install Desktop, VNC, and basic utility
apk add xfce4 xfce4-terminal dbus-x11 pulseaudio nano wget curl sudo adduser xdg-user-dirs xdg-user-dirs-gtk xfce4-whiskermenu-plugin tigervnc xorg pavucontrol -y

# Adding user and password
sudo adduser --disabled-password --gecos "alpine-xfce" alpine-xfce && echo 'alpine-xfce:123' | chpasswd && echo 'alpine-xfce ALL=(ALL:ALL) ALL' > /etc/sudoers.d/user

# Setup VNC server
# Create VNC configuration directory
mkdir -p /home/alpine-xfce/.vnc

# Create VNC password file (default 1234567890)
printf "1234567890" | vncpasswd -f > /home/alpine-xfce/.vnc/passwd
chmod 600 /home/alpine-xfce/.vnc/passwd

# Create script for starting VNC server
echo "#!/bin/sh
export USER=alpine-xfce
export HOME=/home/alpine-xfce
export DISPLAY=:0
export PULSE_SERVER=127.0.0.1
dbus-launch --exit-with-session startxfce4 &
Xvnc -rfbauth  /home/alpine-xfce/.vnc/passwd -localhost no :0 &
echo 'VNC server address: 127.0.0.1:5900 Password: 1234567890'" > /usr/local/bin/startvnc

# Create script for stopping VNC server
echo '#!/bin/sh
kill -9 $(pgrep -f "Xvnc") 2>/dev/null
kill -9 $(pgrep -f "xfce4") 2>/dev/null
rm -rf /tmp/.X0-lock
rm -rf /tmp/.X11-unix/X0' > /usr/local/bin/stopvnc

# Create script for restarting VNC server
echo '#!/bin/sh
stopvnc
startvnc' > /usr/local/bin/restartvnc

# Make it executable
cd /usr/local/bin
chmod +x startvnc
chmod +x stopvnc
chmod +x restartvnc
cd
chmod +x /home/alpine-xfce/.vnc/xstartup
