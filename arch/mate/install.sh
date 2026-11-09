#!/usr/bin/env bash
set -euo pipefail

# Install Desktop, VNC, and basic utility
pacman -Syu --noconfirm
pacman -S --needed --noconfirm mate mate-terminal mate-media mate-applets mate-applet-dock mate-desktop dbus tigervnc wget curl sudo nano pulseaudio pavucontrol xdg-user-dirs xdg-user-dirs-gtk

# Generate dbus machine id
dbus-uuidgen --ensure

# Adding user and password
sudo useradd -m arch-mate && echo 'arch-mate:123' | chpasswd && echo 'arch-mate ALL=(ALL:ALL) ALL' > /etc/sudoers.d/user

# Setup VNC server
# Create VNC configuration directory
mkdir -p /home/arch-mate/.vnc

# Create VNC password file (default 1234567890)
printf "1234567890" | vncpasswd -f > /home/arch-mate/.vnc/passwd
chmod 600 /home/arch-mate/.vnc/passwd

# Create script for starting VNC server
echo "#!/bin/sh
export USER=arch-lxqt
export HOME=/home/arch-mate
export DISPLAY=:0
export PULSE_SERVER=127.0.0.1
Xvnc -rfbauth /home/arch-mate/.vnc/passwd -localhost no :0 &
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

# Make it executable
cd /usr/local/bin
chmod +x startvnc
chmod +x stopvnc
chmod +x restartvnc
cd
chmod +x /home/arch-mate/.vnc/xstartup
