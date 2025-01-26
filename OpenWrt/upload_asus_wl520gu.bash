#!/bin/bash

[ -f ./openwrt-brcm47xx-squashfs.trx ] || wget http://downloads.openwrt.org/backfire/10.03/brcm47xx/openwrt-brcm47xx-squashfs.trx

atftp --trace --option "timeout 1" --option "mode octet" --put --local-file openwrt-brcm47xx-squashfs.trx 192.168.1.1

# Не удалость запустить openwrt-brcm47xx-squashfs_asus_wl520gu.trx

