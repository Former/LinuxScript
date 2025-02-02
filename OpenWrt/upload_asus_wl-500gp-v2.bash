#!/bin/bash

[ -f ./openwrt-22.03.7-bcm47xx-legacy-asus_wl-500gp-v2-squashfs.trx ] || wget https://downloads.openwrt.org/releases/22.03.7/targets/bcm47xx/legacy/openwrt-22.03.7-bcm47xx-legacy-asus_wl-500gp-v2-squashfs.trx

atftp --trace --option "timeout 1000" --option "mode octet" --put --local-file openwrt-22.03.7-bcm47xx-legacy-asus_wl-500gp-v2-squashfs.trx 192.168.1.1

# On router by: ssh root@192.168.1.1
# opkg install block-mount kmod-usb-storage kmod-usb-ohci kmod-fs-ext4 kmod-usb2
# opkg install mc
# opkg install hd-idle
# /etc/config/hd-idle:
# config 'hd-idle'
#        option 'disk' 'sda'
#        option 'enabled' '1'
#        option 'idle_time_unit' 'minutes'
#        option 'idle_time_interval' '10'
