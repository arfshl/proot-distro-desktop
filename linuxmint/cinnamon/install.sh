#!/bin/sh

# Update and upgrade system
apt update && apt upgrade -y && apt autoremove -y

# Add Linux Mint Repository 
wget http://packages.linuxmint.com/pool/main/l/linuxmint-keyring/linuxmint-keyring_2022.06.21_all.deb && sudo dpkg -i linuxmint-keyring_2022.06.21_all.deb && sudo rm linuxmint-keyring_2022.06.21_all.deb
echo 'deb http://packages.linuxmint.com zara main upstream import backport' >> /etc/apt/preferences.d/linuxmint.list

echo 'Package: *
Pin: origin "build.linuxmint.com"
Pin-Priority: 700

Package: *
Pin: release o=linuxmint,c=upstream
Pin-Priority: 700' >> /etc/apt/preferences.d/linuxmint.pref

apt update

# Install Desktop, VNC, and basic utility
apt update && apt upgrade -y && apt install mint-meta-cinnamon pavucontrol dbus-x11 pulseaudio nano wget curl sudo adduser tigervnc-standalone-server -y && apt remove file-roller -y && apt autoremove -y && apt clean

# Adding user and password
sudo adduser --disabled-password --gecos "linuxmint-cinnamon" linuxmint-cinnamon && echo 'linuxmint-cinnamon:123' | chpasswd && echo 'linuxmint-cinnamon ALL=(ALL:ALL) ALL' >> /etc/sudoers.d/user

# Setup VNC server
# Create VNC configuration directory
mkdir -p /home/linuxmint-cinnamon/.vnc

# Create VNC password file (default 1234567890)
printf "1234567890" | vncpasswd -f > /home/linuxmint-cinnamon/.vnc/passwd
chmod 600 /home/linuxmint-cinnamon/.vnc/passwd

# Create VNC startup script
echo '#!/bin/sh
xrdb $HOME/.Xresources
export PULSE_SERVER=127.0.0.1
export DISPLAY=:0
dbus-launch --exit-with-session cinnamon-session' >> /home/linuxmint-cinnamon/.vnc/xstartup

# Create script for starting VNC server
echo "#!/bin/sh
export USER=linuxmint-cinnamon
export HOME=/home/linuxmint-cinnamon
vncserver -name remote-desktop -localhost no :0
echo 'VNC server address: 127.0.0.1:5900 Password: 1234567890'" >> /usr/local/bin/startvnc

# Create script for stopping VNC server
echo '#!/bin/sh
export USER=linuxmint-cinnamon
export HOME=/home/linuxmint-cinnamon
vncserver -kill :0
rm -rf /home/linuxmint-cinnamon/.vnc/localhost:0.pid
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
chmod +x /home/linuxmint-cinnamon/.vnc/xstartup
