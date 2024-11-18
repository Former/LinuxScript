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

sudo apt-get install \
 pwgen xclip audacious audacity\
 gparted testdisk gnome-disk-utility baobab \
 cpu-x gnome-system-monitor \
 wol sshfs traceroute encfs openssh-server nmap\
 remmina xrdp qbittorrent \
 filezilla \
 geany geany-plugins screen git gitg gitk git-cola  \
 golang sqlite3 nodejs \
 build-environment ctest gcc-c++ gcc clang \
 flex libncurses-devel \
 gimp pinta mypaint xviewer \
 firefox dillo links2 \
 vlc smtube mpv mplayer-gui ffmpeg cheese \
 redshift stellarium \
 minetest\
 texlive texstudio \
 systemd-settings-disable-kill-user-processes \
 retext pdfmod\
 gedit gedit-plugins gedit-plugin-devhelp gedit-plugins-latex \
 cinnamon-full idesk icewm pcmanfm volumeicon mc \
 nemo nemo-image-converter nemo-sendto-clamtk
 nemo-arronax nemo-preview nemo-share \
 nemo-beesu-manager nemo-preview-gir-devel nemo-share-common \
 nemo-extensions-translations nemo-python nemo-terminal \
 nemo-fileroller nemo-python-devel nemo-translations \
 photorec\
 mp3info\
 frescobaldi lilypond\
 nano\
 token-manager \
 libgtop-gir libgtop-gir-devel \
 inkscape inkscape-viewer \
 flatpak

# Gedit plugins
https://github.com/hannenz/duplicate

sudo eepm play skype
sudo eepm play telegram
sudo eepm play zoom

wget https://github.com/ntop/n2n/releases/download/3.0/n2n-3.0.0-1038.x86_64.rpm
sudo apt-get install ./n2n-3.0.0-1038.x86_64.rpm

# rpi
wget https://packages.ntop.org/RaspberryPI/bullseye_pi/arm64/n2n/n2n_3.1.1-76-g709590d_arm64.deb
sudo epm -i ./n2n_3.1.1-76-g709590d_arm64.deb

sudo systemctl enable --now edge.service 

git config --global core.editor mcedit

## Flathub
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
## organicmaps
flatpak install flathub app.organicmaps.desktop
flatpak remote-info --log flathub app.organicmaps.desktop
sudo flatpak update --commit=beb1e1a66d50646cfe162437bca7b19fdd9178e3f505fcdc351a74415dbca628 app.organicmaps.desktop
flatpak run app.organicmaps.desktop

# appimagepool
flatpak install flathub io.github.prateekmedia.appimagepool
# AndroidStudio
flatpak install flathub com.google.AndroidStudio

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

# By root:
EDITOR=mcedit crontab -e
@reboot cpupower frequency-set --max 2.3G

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

# tuxguitar
wget -c https://github.com/helge17/tuxguitar/releases/download/1.6.0/tuxguitar-1.6.0_linux-swt.x86_64.rpm
sudo apt-get install ./tuxguitar-1.6.0_linux-swt.x86_64.rpm
