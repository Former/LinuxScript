#!/bin/bash

# Linux Mint

sudo aptitude install chromium-browser gimp geany geany-plugins screen \
 gcc virtualbox-qt virtualbox-ext-pack icewm idesk dillo links2 smtube \
 vlc mpv mc openssh-server mplayer-gui texstudio volumeicon-alsa \
 p7zip-full git falkon ffmpeg remmina remmina-plugin-rdp xrdp \
 remmina-plugin-vnc nmap gparted lxterminal redshift stellarium \
 minetest widelands chromium-browser-l10n sshfs encfs\
 pcmanfm xclip clang clang-4.0 clang-3.9 gitg gitk git-cola \
 texlive-full pwgen mmv cheese gxneur xneur tuxguitar audacious \
 deluge easystroke

sudo apt install --install-recommends winehq-stable

# -----------------------------------------------------------------------
# Alt Linux
sudo systemctl enable --now sshd.service

sudo apt-get update
sudo apt-get dist-upgrade
sudo update-kernel

sudo apt-get install gimp geany geany-plugins screen gcc icewm idesk \
 dillo links2 smtube vlc mpv mc openssh-server mplayer-gui texstudio \
 volumeicon git ffmpeg remmina xrdp nmap gparted redshift stellarium  \
 minetest widelands sshfs encfs pcmanfm xclip clang gitg gitk git-cola \
 texlive pwgen cheese gxneur xneur audacious deluge  gnome-disk-utility \
 cinnamon-full systemd-settings-disable-kill-user-processes retext \
 firefox xviewer gnome-system-monitor filezilla baobab gedit \
 nemo nemo-emblems nemo-fileroller \
 nemo-compare nemo-share-common nemo-arronax nemo-preview nemo-python-devel \
 nemo-extensions-translations nemo-translations nemo-terminal nemo-share \
 nemo-image-converter nemo-python nemo-preview-gir-devel nemo-sendto-clamtk \
 golang sqlite3 nodejs \
 build-environment ctest gcc-c++ flex libncurses-devel \
 cpu-x pdfmod traceroute testdisk

sudo eepm play skype
sudo eepm play telegram
sudo eepm play zoom

wget https://packages.ntop.org/centos-stable/8/x86_64/Packages/n2n-3.0.0-1044.x86_64.rpm
sudo apt-get install ./n2n-3.0.0-1044.x86_64.rpm

sudo systemctl enable --now edge.service 

git config --global core.editor mcedit

## Flathub
## organicmaps
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub app.organicmaps.desktop
flatpak remote-info --log flathub app.organicmaps.desktop
sudo flatpak update --commit=--commit=beb1e1a66d50646cfe162437bca7b19fdd9178e3f505fcdc351a74415dbca628 app.organicmaps.desktop
flatpak run app.organicmaps.desktop

# Gps
sudo apt-get install xgps gpsd gpsmon
/etc/sysconfig/gpsd ->
OPTIONS="-n"
DEVICES="/dev/ttyACM0 /dev/ttyACM1"

# thinkpad x220
sudo apt-get install thinkfan
echo "options thinkpad_acpi fan_control=1" > /etc/modprobe.d/thinkpad_acpi.conf
mcedit /etc/thinkfan.conf ->
tp_fan /proc/acpi/ibm/fan
hwmon /sys/class/thermal/thermal_zone0/temp
(0, 0,  60) 
(1, 53, 65) 
(2, 55, 66) 
(3, 57, 68) 
(4, 61, 70) 
(5, 64, 71) 
(7, 68, 32767)

test: sudo /usr/sbin/thinkfan -n
systemctl enable --now thinkfan.service

# XnConvert
Download: https://www.xnview.com/en/xnconvert/#downloads
sudo epm install ./XnConvert-linux-x64.deb

# Disable autostart gnome-software
mkdir -pv ~/.config/autostart && cp /etc/xdg/autostart/gnome-software-service.desktop ~/.config/autostart/
echo "X-GNOME-Autostart-enabled=false" >> ~/.config/autostart/gnome-software-service.desktop
dconf write /org/gnome/desktop/search-providers/disabled "['org.gnome.Software.desktop']"

dconf write /org/gnome/software/allow-updates false
dconf write /org/gnome/software/download-updates false

# fuse config
sudo control fusermount public
