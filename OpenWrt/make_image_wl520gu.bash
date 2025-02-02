#!/bin/bash

#sudo apt-get install subversion build-essential libncurses5-dev zlib1g-dev gawk git ccache gettext libssl-dev xsltproc

image_builder_url="https://downloads.openwrt.org/releases/18.06.9/targets/brcm47xx/legacy/openwrt-imagebuilder-18.06.9-brcm47xx-legacy.Linux-x86_64.tar.xz"
#"https://downloads.openwrt.org/releases/22.03.7/targets/bcm47xx/legacy/openwrt-imagebuilder-22.03.7-bcm47xx-legacy.Linux-x86_64.tar.xz"

file_name="${image_builder_url##*/}"
base="${file_name%.[^.]*.[^.]*}"
ext="${file_name:${#base} + 1}"

image_builder_file=${file_name}
image_builder_dir=${base}

echo ${file_name} ${base} ${ext}

[ -f ./${image_builder_file} ] || wget ${image_builder_url}

[ -d ./${image_builder_dir} ] || tar -xf ${image_builder_file}

cd ${image_builder_dir}

make image PROFILE=asus-wl-520gu PACKAGES="-lcui -ppp -ppp-mod-pppoe base-files busybox dnsmasq -dropbear -firewall fstools -ip6tables iptables kernel -kmod-b43 -kmod-gpio-button-hotplug -kmod-ipt-offload -kmod-leds-gpio -kmod-ledtrig-default-on -kmod-ledtrig-netdev -kmod-ledtrig-timer libc libgcc logd -mtd netifd nvram -odhcp6c -odhcpd-ipv6only opkg otrx swconfig uci uclient-fetch -wpad-mini block-mount kmod-usb-storage kmod-fs-ext4 kmod-usb-ohci kmod-usb2"
# FILES=files/

#make image

make info

find . -name "*.trx"
find . -name "root.squashfs"
find . -name "*kernel.bin"
