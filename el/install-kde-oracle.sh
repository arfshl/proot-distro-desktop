# Install Desktop, VNC, and basic utility
dnf config-manager --set-enabled ol10_codeready_builder
dnf install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-$(rpm -E %rhel).noarch.rpm
dnf install --nogpgcheck -y https://mirrors.rpmfusion.org/free/el/rpmfusion-free-release-$(rpm -E %rhel).noarch.rpm https://mirrors.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-$(rpm -E %rhel).noarch.rpm
dnf install -y --allowerasing @"KDE Plasma Workspaces" xorg-x11-* dbus-x11 wget curl sudo nano pulseaudio pavucontrol xdg-user-dirs tigervnc rpmfusion-free-release-tainted rpmfusion-nonfree-release-tainted
# dnf install -y --allowerasing @base-x

# Adding user and password
useradd -m oraclelinux-kde && echo 'oraclelinux-kde:123' | chpasswd && echo 'oraclelinux-kde ALL=(ALL:ALL) ALL' >> /etc/sudoers.d/user

# Setup VNC server
# Create VNC configuration directory
mkdir -p /home/oraclelinux-kde/.vnc

# Create VNC password file (default 1234567890)
printf "1234567890" | vncpasswd -f > /home/oraclelinux-kde/.vnc/passwd
chmod 600 /home/oraclelinux-kde/.vnc/passwd

# Create VNC startup script
echo '#!/bin/sh
xrdb $HOME/.Xresources
export PULSE_SERVER=127.0.0.1
export DISPLAY=:0
dbus-launch --exit-with-session startplasma-x11' >> /home/oraclelinux-kde/.vnc/xstartup

# Create script for starting VNC server
echo "#!/bin/sh
export USER=oraclelinux-kde
export HOME=/home/oraclelinux-kde
vncserver -name remote-desktop -localhost no :0
echo 'VNC server address: 127.0.0.1:5900 Password: 1234567890'" >> /usr/local/bin/startvnc

# Create script for stopping VNC server
echo '#!/bin/sh
export USER=oraclelinux-kde
export HOME=/home/oraclelinux-kde
vncserver -kill :0
rm -rf /home/oraclelinux-kde/.vnc/localhost:0.pid
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
chmod +x /home/oraclelinux-kde/.vnc/xstartup
