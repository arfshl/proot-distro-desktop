#!/bin/sh

# Update and upgrade system
apk -U upgrade

# Install Desktop, VNC, and basic utility
apk add plasma-desktop-meta konsole dbus-x11 pulseaudio nano wget curl sudo adduser xdg-user-dirs tigervnc xorg pavucontrol-qt -y

# Adding user and password
sudo adduser --disabled-password --gecos "alpine-kde" alpine-kde && echo 'alpine-kde:123' | chpasswd && echo 'alpine-kde ALL=(ALL:ALL) ALL' >> /etc/sudoers.d/user

# Setup VNC server
# Create VNC configuration directory
mkdir -p /home/alpine-kde/.vnc

# Create VNC password file (default 1234567890)
printf "1234567890" | vncpasswd -f > /home/alpine-kde/.vnc/passwd
chmod 600 /home/alpine-kde/.vnc/passwd

# Create VNC startup script
echo '#!/bin/sh
xrdb $HOME/.Xresources
export PULSE_SERVER=127.0.0.1
export DISPLAY=:0
dbus-launch --exit-with-session startlxqt' >> /home/alpine-kde/.vnc/xstartup

# Create script for starting VNC server
echo "#!/bin/sh
export USER=alpine-kde
export HOME=/home/alpine-kde
vncserver -name remote-desktop -localhost no :0
echo 'VNC server address: 127.0.0.1:5900 Password: 1234567890'" >> /usr/local/bin/startvnc

# Create script for stopping VNC server
echo '#!/bin/sh
export USER=alpine-kde
export HOME=/home/alpine-kde
vncserver -kill :0
rm -rf /home/alpine-kde/.vnc/localhost:0.pid
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
chmod +x /home/alpine-kde/.vnc/xstartup
