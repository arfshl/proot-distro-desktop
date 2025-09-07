#!/bin/sh

# Install Desktop, VNC, and basic utility
pacman -Syu
pacman -S --needed --noconfirm lxqt dbus tigervnc wget curl sudo nano pulseaudio pavucontrol-qt xdg-user-dirs

# Generate dbus machine id
dbus-uuidgen --ensure

# Adding user and password
sudo useradd -m arch-lxqt && echo 'arch-lxqt:123' | chpasswd && echo 'arch-lxqt ALL=(ALL:ALL) ALL' >> /etc/sudoers.d/user

# Setup VNC server
# Create VNC configuration directory
mkdir -p /home/arch-lxqt/.vnc

# Create VNC password file (default 1234567890)
printf "1234567890" | vncpasswd -f > /home/arch-lxqt/.vnc/passwd
chmod 600 /home/arch-lxqt/.vnc/passwd

# Create VNC startup script
echo '#!/bin/sh
xrdb $HOME/.Xresources
export PULSE_SERVER=127.0.0.1
export DISPLAY=:0
dbus-launch --exit-with-session startlxqt' >> /home/arch-lxqt/.vnc/xstartup

# Create script for starting VNC server
echo "#!/bin/sh
export USER=arch-lxqt
export HOME=/home/arch-lxqt
vncserver -name remote-desktop -localhost no :0
echo 'VNC server address: 127.0.0.1:5900 Password: 1234567890'" >> /usr/local/bin/startvnc

# Create script for stopping VNC server
echo '#!/bin/sh
export USER=arch-lxqt
export HOME=/home/arch-lxqt
vncserver -kill :0
rm -rf /home/arch-lxqt/.vnc/localhost:0.pid
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
chmod +x /home/arch-lxqt/.vnc/xstartup