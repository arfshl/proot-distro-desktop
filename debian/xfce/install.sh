#!/usr/bin/env bash
set -euo pipefail

# elementary-xfce-icon-theme workaround
# thanks to https://github.com/Willie169/fix-elementary-xfce-icon-theme
apt update
apt install wget -y
wget http://ports.ubuntu.com/pool/universe/e/elementary-xfce/elementary-xfce-icon-theme_0.19-1_all.deb
apt install ./elementary-xfce-icon-theme_0.19-1_all.deb -y --allow-downgrades --allow-change-held-packages
rm elementary-xfce-icon-theme_0.19-1_all.deb
apt-mark hold elementary-xfce-icon-theme

# Update and upgrade system
apt update && apt upgrade -y && apt autoremove -y
apt install sudo software-properties-common -y

# Add mozilla official repository 

echo 'Adding Mozilla Repository...'
wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | sudo tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null
sudo echo 'deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main' >> /etc/apt/sources.list.d/mozilla.list
sudo echo 'deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt thunderbird-deb main' >> /etc/apt/sources.list.d/mozilla.list
echo 'Configuring APT Pinning...'
sudo echo 'Package: *
Pin: origin packages.mozilla.org
Pin-Priority: 1001' >> /etc/apt/preferences.d/mozilla
echo 'Done'

# Install Desktop, VNC, and basic utility
apt install xfce4 xfce4-terminal dbus-x11 pulseaudio nano wget curl sudo adduser xdg-user-dirs xdg-user-dirs-gtk xfce4-whiskermenu-plugin tigervnc-standalone-server -y && apt clean

# Adding user and password
sudo adduser --disabled-password --gecos "debian-xfce" debian-xfce && echo 'debian-xfce:123' | chpasswd && echo 'debian-xfce ALL=(ALL:ALL) ALL' >> /etc/sudoers.d/user

# Setup VNC server
# Create VNC configuration directory
mkdir -p /home/debian-xfce/.vnc

# Create VNC password file (default 1234567890)
printf "1234567890" | vncpasswd -f > /home/debian-xfce/.vnc/passwd
chmod 600 /home/debian-xfce/.vnc/passwd

# Create VNC startup script
echo '#!/bin/sh
xrdb $HOME/.Xresources
export PULSE_SERVER=127.0.0.1
export DISPLAY=:0
dbus-launch --exit-with-session startxfce4' >> /home/debian-xfce/.vnc/xstartup

# Create script for starting VNC server
echo '#!/bin/sh
export USER=debian-xfce
export HOME=/home/debian-xfce
vncserver -name remote-desktop -localhost no :0
echo 'VNC server address: 127.0.0.1:5900 Password: 1234567890'' >> /usr/local/bin/startvnc

# Create script for stopping VNC server
echo '#!/bin/sh
export USER=debian-xfce
export HOME=/home/debian-xfce
vncserver -kill :0
rm -rf /home/debian-xfce/.vnc/localhost:0.pid
rm -rf /tmp/.X0-lock
rm -rf /tmp/.X11-unix/X0' >> /usr/local/bin/stopvnc

# Create script for restarting VNC server
echo '#!/bin/sh
stopvnc
startvnc' >> /usr/local/bin/restartvnc

# Make it executable
cd /usr/local/bin
chmod +x startvnc
chmod +x stopvnc
chmod +x restartvnc
cd
chmod +x /home/debian-xfce/.vnc/xstartup





