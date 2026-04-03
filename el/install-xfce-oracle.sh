# Install Desktop, VNC, and basic utility
dnf config-manager --set-enabled ol9_codeready_builder
dnf -y install oracle-epel-release-el$(rpm -E %{rhel}).x86_64
dnf install --nogpgcheck -y https://mirrors.rpmfusion.org/free/el/rpmfusion-free-release-$(rpm -E %rhel).noarch.rpm https://mirrors.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-$(rpm -E %rhel).noarch.rpm
dnf install -y @Xfce @base-x xfce4* wget curl sudo nano pulseaudio pavucontrol xdg-user-dirs xdg-user-dirs-gtk tigervnc rpmfusion-free-release-tainted rpmfusion-nonfree-release-tainted

# Adding user and password
useradd -m oraclelinux-xfce && echo 'oraclelinux-xfce:123' | chpasswd && echo 'oraclelinux-xfce ALL=(ALL:ALL) ALL' >> /etc/sudoers.d/user

# Setup VNC server
# Create VNC configuration directory
mkdir -p /home/oraclelinux-xfce/.vnc

# Create VNC password file (default 1234567890)
printf "1234567890" | vncpasswd -f > /home/oraclelinux-xfce/.vnc/passwd
chmod 600 /home/oraclelinux-xfce/.vnc/passwd

# Create VNC startup script
echo '#!/bin/sh
xrdb $HOME/.Xresources
export PULSE_SERVER=127.0.0.1
export DISPLAY=:0
dbus-launch --exit-with-session startxfce4' >> /home/oraclelinux-xfce/.vnc/xstartup

# Create script for starting VNC server
echo "#!/bin/sh
export USER=oraclelinux-xfce
export HOME=/home/oraclelinux-xfce
vncserver -name remote-desktop -localhost no :0
echo 'VNC server address: 127.0.0.1:5900 Password: 1234567890'" >> /usr/local/bin/startvnc

# Create script for stopping VNC server
echo '#!/bin/sh
export USER=oraclelinux-xfce
export HOME=/home/oraclelinux-xfce
vncserver -kill :0
rm -rf /home/oraclelinux-xfce/.vnc/localhost:0.pid
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
chmod +x /home/oraclelinux-xfce/.vnc/xstartup
