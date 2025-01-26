#!/bin/bash

[ -f ./openwrt-22.03.7-bcm47xx-legacy-asus_wl-500gp-v2-squashfs.trx ] || wget https://downloads.openwrt.org/releases/22.03.7/targets/bcm47xx/legacy/openwrt-22.03.7-bcm47xx-legacy-asus_wl-500gp-v2-squashfs.trx

atftp --trace --option "timeout 1000" --option "mode octet" --put --local-file openwrt-22.03.7-bcm47xx-legacy-asus_wl-500gp-v2-squashfs.trx 192.168.1.1

