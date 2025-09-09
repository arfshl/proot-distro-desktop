# Install Desktop, VNC, and basic utility
dnf update
dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
dnf config-manager setopt fedora-cisco-openh264.enabled=1
dnf install -y --allowerasing --skip-broken wget curl sudo nano pulseaudio pavucontrol-qt xdg-user-dirs tigervnc tigervnc-server rpmfusion-free-release-tainted rpmfusion-nonfree-release-tainted
dnf install -y --allowerasing --skip-broken @base-x @lxde-desktop-environment f$(rpm -E %fedora)-backgrounds-base

# Adding user and password
useradd -m fedora-lxde && echo 'fedora-lxde:123' | chpasswd && echo 'fedora-lxde ALL=(ALL:ALL) ALL' >> /etc/sudoers.d/user

# Setup VNC server
# Create VNC configuration directory
mkdir -p /home/fedora-lxde/.vnc

# Create VNC password file (default 1234567890)
printf "1234567890" | vncpasswd -f > /home/fedora-lxde/.vnc/passwd
chmod 600 /home/fedora-lxde/.vnc/passwd

# Create VNC startup script
echo '#!/bin/sh
xrdb $HOME/.Xresources
export PULSE_SERVER=127.0.0.1
export DISPLAY=:0
dbus-launch --exit-with-session startlxde' >> /home/fedora-lxde/.vnc/xstartup

# Create script for starting VNC server
echo "#!/bin/sh
export USER=fedora-lxde
export HOME=/home/fedora-lxde
vncserver -name remote-desktop -localhost no :0
echo 'VNC server address: 127.0.0.1:5900 Password: 1234567890'" >> /usr/local/bin/startvnc

# Create script for stopping VNC server
echo '#!/bin/sh
export USER=fedora-lxde
export HOME=/home/fedora-lxde
vncserver -kill :0
rm -rf /home/fedora-lxde/.vnc/localhost:0.pid
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
chmod +x /home/fedora-lxde/.vnc/xstartup
