#!/bin/sh

# Install Desktop, VNC, and basic utility
apk add cinnamon-desktop mate-terminal dbus-x11 pulseaudio nano wget curl sudo adduser xdg-user-dirs xdg-user-dirs-gtk tigervnc xorg pavucontrol -y

# Adding user and password
sudo adduser --disabled-password --gecos "alpine-cinnamon" alpine-cinnamon && echo 'alpine-cinnamon:123' | chpasswd && echo 'alpine-cinnamon ALL=(ALL:ALL) ALL' >> /etc/sudoers.d/user

# Setup VNC server
# Create VNC configuration directory
mkdir -p /home/alpine-cinnamon/.vnc

# Create VNC password file (default 1234567890)
printf "1234567890" | vncpasswd -f > /home/alpine-cinnamon/.vnc/passwd
chmod 600 /home/alpine-cinnamon/.vnc/passwd

# Create VNC startup script
echo '#!/bin/sh
xrdb $HOME/.Xresources
export PULSE_SERVER=127.0.0.1
export DISPLAY=:0
dbus-launch --exit-with-session cinnamon-session' >> /home/alpine-cinnamon/.vnc/xstartup

# Create script for starting VNC server
echo "#!/bin/sh
export USER=alpine-cinnamon
export HOME=/home/alpine-cinnamon
vncserver -name remote-desktop -localhost no :0
echo 'VNC server address: 127.0.0.1:5900 Password: 1234567890'" >> /usr/local/bin/startvnc

# Create script for stopping VNC server
echo '#!/bin/sh
export USER=alpine-cinnamon
export HOME=/home/alpine-cinnamon
vncserver -kill :0
rm -rf /home/alpine-cinnamon/.vnc/localhost:0.pid
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
chmod +x /home/alpine-cinnamon/.vnc/xstartup