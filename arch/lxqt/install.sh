#!/usr/bin/env bash
set -euo pipefail

# Install Desktop, VNC, and basic utility
pacman -Syu --noconfirm
pacman -S --needed --noconfirm lxqt dbus tigervnc wget curl sudo nano pulseaudio pavucontrol-qt xdg-user-dirs

# Generate dbus machine id
dbus-uuidgen --ensure

# Adding user and password
sudo useradd -m arch-lxqt && echo 'arch-lxqt:123' | chpasswd && echo 'arch-lxqt ALL=(ALL:ALL) ALL' > /etc/sudoers.d/user

# Setup VNC server
# Create VNC configuration directory
mkdir -p /home/arch-lxqt/.vnc

# Create VNC password file (default 1234567890)
printf "1234567890" | vncpasswd -f > /home/arch-lxqt/.vnc/passwd
chmod 600 /home/arch-lxqt/.vnc/passwd

# Create script for starting VNC server
echo "#!/bin/sh
export USER=opensuse-lxqt
export HOME=/home/opensuse-lxqt
export DISPLAY=:0
export PULSE_SERVER=127.0.0.1
dbus-launch --exit-with-session startlxqt &
Xvnc -rfbauth /home/opensuse-lxqt/.vnc/passwd -localhost no :0 &
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

# Make it executable
cd /usr/local/bin
chmod +x startvnc
chmod +x stopvnc
chmod +x restartvnc
cd
chmod +x /home/arch-lxqt/.vnc/xstartup
