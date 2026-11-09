#!/usr/bin/env bash
set -euo pipefail

# Install Desktop, VNC, and basic utility
xbps-install -S mate mate-extra mate-tweak dbus-x11 pulseaudio nano wget curl sudo adduser xdg-user-dirs xdg-user-dirs-gtk tigervnc pavucontrol xorg -y

# Adding user and password
sudo useradd -m void-mate && echo 'void-mate:123' | chpasswd && echo 'void-mate ALL=(ALL:ALL) ALL' > /etc/sudoers.d/user

# Setup VNC server
# Create VNC configuration directory
mkdir -p /home/void-mate/.vnc

# Create VNC password file (default 1234567890)
printf "1234567890" | vncpasswd -f > /home/void-mate/.vnc/passwd
chmod 600 /home/void-mate/.vnc/passwd

# Create script for starting VNC server
echo "#!/bin/sh
export USER=void-lxqt
export HOME=/home/void-mate
export DISPLAY=:0
export PULSE_SERVER=127.0.0.1
Xvnc -rfbauth /home/void-mate/.vnc/passwd -localhost no :0 &
dbus-launch --exit-with-session mate-session &
echo 'VNC server address: 127.0.0.1:5900 Password: 1234567890'" > /usr/local/bin/startvnc

# Create script for stopping VNC server
echo '#!/bin/sh
kill -9 $(pgrep -f "Xvnc") 2>/dev/null
kill -9 $(pgrep -f "mate") 2>/dev/null
rm -rf /tmp/.X0-lock
rm -rf /tmp/.X11-unix/X0' > /usr/local/bin/stopvnc

# Create script for restarting VNC server
echo '#!/bin/sh
stopvnc
startvnc' > /usr/local/bin/restartvnc

# make bash the default shell
chsh -s /bin/bash void-mate
chsh -s /bin/bash root

# Make it executable
cd /usr/local/bin
chmod +x startvnc
chmod +x stopvnc
chmod +x restartvnc
cd
chmod +x /home/void-mate/.vnc/xstartup
