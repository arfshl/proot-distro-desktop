#!/usr/bin/env bash
set -euo pipefail

# Install Desktop, VNC, and basic utility
xbps-install -S lxde dbus-x11 pulseaudio nano wget curl sudo adduser xdg-user-dirs xdg-user-dirs-gtk tigervnc pavucontrol xorg -y

# Adding user and password
sudo useradd -m void-lxde && echo 'void-lxde:123' | chpasswd && echo 'void-lxde ALL=(ALL:ALL) ALL' > /etc/sudoers.d/user

# Setup VNC server
# Create VNC configuration directory
mkdir -p /home/void-lxde/.vnc

# Create VNC password file (default 1234567890)
printf "1234567890" | vncpasswd -f > /home/void-lxde/.vnc/passwd
chmod 600 /home/void-lxde/.vnc/passwd

# Create script for starting VNC server
echo "#!/bin/sh
export USER=void-lxde
export HOME=/home/void-lxde
export DISPLAY=:0
export PULSE_SERVER=127.0.0.1
dbus-launch --exit-with-session startlxde &
Xvnc -rfbauth /home/void-lxde/.vnc/passwd -localhost no :0 &
echo 'VNC server address: 127.0.0.1:5900 Password: 1234567890'" > /usr/local/bin/startvnc

# Create script for stopping VNC server
echo '#!/bin/sh
kill -9 $(pgrep -f "Xvnc") 2>/dev/null
kill -9 $(pgrep -f "lxde) 2>/dev/null
rm -rf /tmp/.X0-lock
rm -rf /tmp/.X11-unix/X0' > /usr/local/bin/stopvnc

# Create script for restarting VNC server
echo '#!/bin/sh
stopvnc
startvnc' > /usr/local/bin/restartvnc

# make bash the default shell
chsh -s /bin/bash void-lxde
chsh -s /bin/bash root

# Make it executable
cd /usr/local/bin
chmod +x startvnc
chmod +x stopvnc
chmod +x restartvnc
cd
chmod +x /home/void-lxde/.vnc/xstartup
