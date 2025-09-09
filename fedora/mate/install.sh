# Install Desktop, VNC, and basic utility
dnf update
dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
dnf config-manager setopt fedora-cisco-openh264.enabled=1
dnf install -y wget curl sudo nano pulseaudio pavucontrol xdg-user-dirs xdg-user-dirs-gtk tigervnc tigervnc-server rpmfusion-free-release-tainted rpmfusion-nonfree-release-tainted
dnf install -y --allowerasing --skip-broken @base-x @mate-desktop-environment f$(rpm -E %fedora)-backgrounds-mate f$(rpm -E %fedora)-backgrounds-base fedora-release-identity-matecompiz fedora-release-matecompiz

# Adding user and password
useradd -m fedora-mate && echo 'fedora-mate:123' | chpasswd && echo 'fedora-mate ALL=(ALL:ALL) ALL' >> /etc/sudoers.d/user

# Setup VNC server
# Create VNC configuration directory
mkdir -p /home/fedora-mate/.vnc

# Create VNC password file (default 1234567890)
printf "1234567890" | vncpasswd -f > /home/fedora-mate/.vnc/passwd
chmod 600 /home/fedora-mate/.vnc/passwd

# Create VNC startup script
echo '#!/bin/sh
xrdb $HOME/.Xresources
export PULSE_SERVER=127.0.0.1
export DISPLAY=:0
dbus-launch --exit-with-session mate-session' >> /home/fedora-mate/.vnc/xstartup

# Create script for starting VNC server
echo "#!/bin/sh
export USER=fedora-mate
export HOME=/home/fedora-mate
vncserver -name remote-desktop -localhost no :0
echo 'VNC server address: 127.0.0.1:5900 Password: 1234567890'" >> /usr/local/bin/startvnc

# Create script for stopping VNC server
echo '#!/bin/sh
export USER=fedora-mate
export HOME=/home/fedora-mate
vncserver -kill :0
rm -rf /home/fedora-mate/.vnc/localhost:0.pid
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
chmod +x /home/fedora-mate/.vnc/xstartup
