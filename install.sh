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
 cinnamon-full systemd-settings-disable-kill-user-processes \
 firefox xviewer gnome-system-monitor filezilla baobab gedit \
 nemo nemo-emblems nemo-fileroller \
 nemo-compare nemo-share-common nemo-arronax nemo-preview nemo-python-devel \
 nemo-extensions-translations nemo-translations nemo-terminal nemo-share \
 nemo-image-converter nemo-python nemo-preview-gir-devel nemo-sendto-clamtk \
 golang sqlite3 nodejs \
 cpu-x

sudo eepm play skype
sudo eepm play telegram
sudo eepm play zoom

wget https://packages.ntop.org/centos-stable/8/x86_64/Packages/n2n-3.0.0-1044.x86_64.rpm
sudo apt-get install ./n2n-3.0.0-1044.x86_64.rpm

sudo systemctl enable --now edge.service 

git config --global core.editor mcedit

# Gps
sudo apt-get install xgps gpsd gpsmon
/etc/sysconfig/gpsd ->
OPTIONS="-n"
DEVICES="/dev/ttyACM0 /dev/ttyACM1"
