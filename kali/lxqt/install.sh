#!/usr/bin/env bash
set -euo pipefail

# Add mozilla official repository 
apt install sudo -y
echo 'Adding Mozilla Repository...'
wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | sudo tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null
sudo echo 'deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main' >> /etc/apt/sources.list.d/mozilla.list
sudo echo 'deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt thunderbird-deb main' >> /etc/apt/sources.list.d/mozilla.list
echo 'Configuring APT Pinning...'
sudo echo 'Package: *
Pin: origin packages.mozilla.org
Pin-Priority: 1001' >> /etc/apt/preferences.d/mozilla
echo 'Done'

# Update and upgrade system
apt update && apt upgrade -y && apt autoremove -y

# Install Desktop, VNC, and kali utility
apt update && apt upgrade -y
apt install kali-linux-headless kali-linux-arm kali-linux-nethunter -y
apt update && apt upgrade -y && apt install apt-transport-https gnupg lxqt-core lxqt-config qterminal dbus-x11 pulseaudio nano wget curl sudo adduser pavucontrol-qt tigervnc-standalone-server -y && apt clean

# Adding user and password
sudo adduser --disabled-password --gecos "kali-lxqt" kali-lxqt && echo 'kali-lxqt:123' | chpasswd && echo 'kali-lxqt ALL=(ALL:ALL) ALL' >> /etc/sudoers.d/user

# Setup VNC server
# Create VNC configuration directory
mkdir -p /home/kali-lxqt/.vnc

# Create VNC password file (default 1234567890)
printf "1234567890" | vncpasswd -f > /home/kali-lxqt/.vnc/passwd
chmod 600 /home/kali-lxqt/.vnc/passwd

# Create VNC startup script
echo '#!/bin/sh
xrdb $HOME/.Xresources
export PULSE_SERVER=127.0.0.1
export DISPLAY=:0
dbus-launch --exit-with-session startlxqt' >> /home/kali-lxqt/.vnc/xstartup

# Create script for starting VNC server
echo '#!/bin/sh
export USER=kali-lxqt
export HOME=/home/kali-lxqt
vncserver -name remote-desktop -localhost no :0
echo 'VNC server address: 127.0.0.1:5900 Password: 1234567890'' >> /usr/local/bin/startvnc

# Create script for stopping VNC server
echo '#!/bin/sh
export USER=kali-lxqt
export HOME=/home/kali-lxqt
vncserver -kill :0
rm -rf /home/kali-lxqt/.vnc/localhost:0.pid
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
chmod +x /home/kali-lxqt/.vnc/xstartup



