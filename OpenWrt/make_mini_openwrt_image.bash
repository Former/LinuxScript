#!/bin/bash

#sudo apt-get install subversion build-essential libncurses5-dev zlib1g-dev gawk git ccache gettext libssl-dev xsltproc 
#17.01
#sudo apt-get install zlib-devel-static

#image_builder_url="https://downloads.openwrt.org/releases/17.01.7/targets/brcm47xx/legacy/lede-imagebuilder-17.01.7-brcm47xx-legacy.Linux-x86_64.tar.xz"
image_builder_url="https://downloads.openwrt.org/releases/19.07.7/targets/brcm47xx/legacy/openwrt-imagebuilder-19.07.7-brcm47xx-legacy.Linux-x86_64.tar.xz"
#image_builder_url="https://downloads.openwrt.org/releases/22.03.7/targets/bcm47xx/legacy/openwrt-imagebuilder-22.03.7-bcm47xx-legacy.Linux-x86_64.tar.xz"
#image_builder_url="https://downloads.openwrt.org/releases/18.06.9/targets/brcm47xx/legacy/openwrt-imagebuilder-18.06.9-brcm47xx-legacy.Linux-x86_64.tar.xz"

file_name="${image_builder_url##*/}"
base="${file_name%.[^.]*.[^.]*}"
ext="${file_name:${#base} + 1}"

image_builder_file=${file_name}
image_builder_dir=${base}

echo ${file_name} ${base} ${ext}

[ -f ./${image_builder_file} ] || wget ${image_builder_url}

[ -d ./${image_builder_dir} ] || tar -xf ${image_builder_file}

n2n_ipk="n2n-edge_HEAD-1_mipsel_mips32.ipk"
n2n_add=""

! [ -f ./${n2n_ipk} ] || n2n_add="libcap kmod-tun n2n-edge"
cp ${n2n_ipk} ${image_builder_dir}/packages/${n2n_ipk}
cp ${n2n_ipk} ${image_builder_dir}/package/${n2n_ipk}

cd ${image_builder_dir}

#22.03.7 make image PROFILE=standard PACKAGES="base-files busybox ca-bundle dnsmasq dropbear firewall4 fstools kernel -kmod-b43 -kmod-gpio-button-hotplug -kmod-leds-gpio -kmod-nft-offload libc libgcc -libustream-wolfssl logd -mtd netifd -nftables nvram odhcp6c -odhcpd-ipv6only opkg otrx -ppp -ppp-mod-pppoe procd -procd-seccomp swconfig uci uclient-fetch urandom-seed -urngd -wpad-basic-wolfssl"
# block-mount kmod-usb-storage kmod-fs-ext4 kmod-usb-ohci kmod-usb2 ${n2n_add}"

#18.06 19.07 
make image PROFILE=standard PACKAGES="-lcui -ppp -ppp-mod-pppoe base-files busybox dnsmasq dropbear firewall fstools -ip6tables iptables kernel -kmod-b43 -kmod-gpio-button-hotplug -kmod-ipt-offload -kmod-leds-gpio -kmod-ledtrig-default-on -kmod-ledtrig-netdev -kmod-ledtrig-timer libc libgcc logd mtd netifd nvram odhcp6c -odhcpd-ipv6only opkg otrx swconfig uci uclient-fetch -wpad-mini"
# block-mount kmod-usb-storage kmod-fs-ext4 kmod-usb-ohci kmod-usb2 ${n2n_add}"

#17.01 make image V=s PROFILE=standard PACKAGES="base-files libc libgcc busybox dropbear mtd uci opkg netifd fstools uclient-fetch logd swconfig -wpad-mini nvram otrx -kmod-leds-gpio -kmod-gpio-button-hotplug -kmod-ledtrig-default-on -kmod-ledtrig-timer -kmod-ledtrig-netdev dnsmasq iptables -ip6tables -ppp -ppp-mod-pppoe firewall odhcpd -odhcp6c -kmod-b43"
# block-mount kmod-usb-storage kmod-fs-ext4 kmod-usb-ohci kmod-usb2 ${n2n_add}"

# FILES=files/

make V=s info

find . -name "*.trx"
find . -name "root.squashfs"
find . -name "*kernel.bin"
