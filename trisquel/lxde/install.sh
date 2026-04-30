#!/bin/sh

# Update and upgrade system
apt update && apt upgrade -y && apt autoremove -y

# Install Desktop, VNC, and basic utility
apt update && apt upgrade -y && apt install lxde-core pcmanfm lxterminal lxappearance pavucontrol lxappearance-obconf lxde-settings-daemon dbus-x11 pulseaudio nano wget curl sudo adduser tigervnc-standalone-server trisquel-mini-data trisquel-wallpapers -y && apt clean

# Adding user and password
sudo adduser --disabled-password --gecos "trisquel-lxde" trisquel-lxde && echo 'trisquel-lxde:123' | chpasswd && echo 'trisquel-lxde ALL=(ALL:ALL) ALL' >> /etc/sudoers.d/user

# Setup VNC server
# Create VNC configuration directory
mkdir -p /home/trisquel-lxde/.vnc

# Create VNC password file (default 1234567890)
printf "1234567890" | vncpasswd -f > /home/trisquel-lxde/.vnc/passwd
chmod 600 /home/trisquel-lxde/.vnc/passwd

# Create VNC startup script
echo '#!/bin/sh
xrdb $HOME/.Xresources
export PULSE_SERVER=127.0.0.1
export DISPLAY=:0
dbus-launch --exit-with-session startlxde' >> /home/trisquel-lxde/.vnc/xstartup

# Create script for starting VNC server
echo "#!/bin/sh
export USER=trisquel-lxde
export HOME=/home/trisquel-lxde
vncserver -name remote-desktop -localhost no :0
echo 'VNC server address: 127.0.0.1:5900 Password: 1234567890'" >> /usr/local/bin/startvnc

# Create script for stopping VNC server
echo '#!/bin/sh
export USER=trisquel-lxde
export HOME=/home/trisquel-lxde
vncserver -kill :0
rm -rf /home/trisquel-lxde/.vnc/localhost:0.pid
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
chmod +x /home/trisquel-lxde/.vnc/xstartup
rm -- "$0"
