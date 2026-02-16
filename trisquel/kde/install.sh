#!/bin/sh

# Update and upgrade system
apt update && apt upgrade -y && apt autoremove -y

# Install X11 Support for Quokka and Higher
apt install plasma-session-x11 -y

# Install Desktop, VNC, and basic utility
apt update && apt upgrade -y && apt install kde-plasma-desktop trisquel-wallpapers triskel-settings-desktop dbus-x11 pulseaudio nano wget curl sudo adduser pavucontrol-qt tigervnc-standalone-server -y && apt remove firefox-esr konqueror ksysguard plasma-discover partitionmanager kdeconnect termit kwalletmanager -y && apt autoremove -y && apt clean
kwriteconfig5 --file kscreensaverrc --group Daemon --key Autolock false
kwriteconfig5 --file kscreensaverrc --group Daemon --key Lock false
kwriteconfig5 --file kscreenlockerrc --group Daemon --key Autolock false

# Adding user and password
sudo adduser --disabled-password --gecos "trisquel-kde" trisquel-kde && echo 'trisquel-kde:123' | chpasswd && echo 'trisquel-kde ALL=(ALL:ALL) ALL' >> /etc/sudoers.d/user

# Setup VNC server
# Create VNC configuration directory
mkdir -p /home/trisquel-kde/.vnc

# Create VNC password file (default 1234567890)
printf "1234567890" | vncpasswd -f > /home/trisquel-kde/.vnc/passwd
chmod 600 /home/trisquel-kde/.vnc/passwd

# Create VNC startup script
echo '#!/bin/sh
xrdb $HOME/.Xresources
export PULSE_SERVER=127.0.0.1
export DISPLAY=:0
dbus-launch --exit-with-session startplasma-x11' >> /home/trisquel-kde/.vnc/xstartup

# Create script for starting VNC server
echo "#!/bin/sh
export USER=trisquel-kde
export HOME=/home/trisquel-kde
vncserver -name remote-desktop -localhost no :0
echo 'VNC server address: 127.0.0.1:5900 Password: 1234567890'" >> /usr/local/bin/startvnc

# Create script for stopping VNC server
echo '#!/bin/sh
export USER=trisquel-kde
export HOME=/home/trisquel-kde
vncserver -kill :0
rm -rf /home/trisquel-kde/.vnc/localhost:0.pid
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
chmod +x /home/trisquel-kde/.vnc/xstartup



