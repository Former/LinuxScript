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
sudo systemctl enable sshd.service
sudo systemctl start sshd.service

sudo apt-get install gimp geany geany-plugins screen gcc icewm idesk \
 dillo links2 smtube vlc mpv mc openssh-server mplayer-gui texstudio \
 volumeicon git ffmpeg remmina xrdp nmap gparted redshift stellarium  \
 minetest widelands sshfs encfs pcmanfm xclip clang gitg gitk git-cola \
 texlive pwgen cheese gxneur xneur audacious deluge  gnome-disk-utility

sudo apt-get install cinnamon systemd-settings-disable-kill-user-processes \
 firefox xviewer

sudo eepm play skype
sudo eepm play telegram
sudo eepm play zoom

wget https://packages.ntop.org/centos-stable/8/x86_64/Packages/n2n-2.8.0-540.x86_64.rpm
sudo apt-get install ./n2n-2.8.0-540.x86_64.rpm

sudo systemctl enable edge.service
sudo systemctl start edge.service