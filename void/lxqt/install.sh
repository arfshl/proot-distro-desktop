#!/usr/bin/env bash
set -euo pipefail

# Install Desktop, VNC, and basic utility
xbps-install -S lxqt dbus-x11 pulseaudio nano wget curl sudo adduser xdg-user-dirs tigervnc pavucontrol-qt xorg -y

# Adding user and password
sudo useradd -m void-lxqt && echo 'void-lxqt:123' | chpasswd && echo 'void-lxqt ALL=(ALL:ALL) ALL' > /etc/sudoers.d/user

# Setup VNC server
# Create VNC configuration directory
mkdir -p /home/void-lxqt/.vnc

# Create VNC password file (default 1234567890)
printf "1234567890" | vncpasswd -f > /home/void-lxqt/.vnc/passwd
chmod 600 /home/void-lxqt/.vnc/passwd

# Create script for starting VNC server
echo "#!/bin/sh
export USER=void-lxqt
export HOME=/home/void-lxqt
export DISPLAY=:0
export PULSE_SERVER=127.0.0.1
dbus-launch --exit-with-session startlxqt &
Xvnc -rfbauth /home/void-lxqt/.vnc/passwd -localhost no :0 &
echo 'VNC server address: 127.0.0.1:5900 Password: 1234567890'" > /usr/local/bin/startvnc

# Create script for stopping VNC server
echo '#!/bin/sh
kill -9 $(pgrep -f "Xvnc") 2>/dev/null
kill -9 $(pgrep -f "lxqt") 2>/dev/null
rm -rf /tmp/.X0-lock
rm -rf /tmp/.X11-unix/X0' > /usr/local/bin/stopvnc

# Create script for restarting VNC server
echo '#!/bin/sh
stopvnc
startvnc' > /usr/local/bin/restartvnc

# make bash the default shell
chsh -s /bin/bash void-lxqt
chsh -s /bin/bash root

# Make it executable
cd /usr/local/bin
chmod +x startvnc
chmod +x stopvnc
chmod +x restartvnc
cd
chmod +x /home/void-lxqt/.vnc/xstartup
