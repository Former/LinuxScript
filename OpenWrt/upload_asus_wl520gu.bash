#!/bin/bash

url="http://downloads.openwrt.org/backfire/10.03/brcm47xx/openwrt-brcm47xx-squashfs.trx"

file_name="${url##*/}"

[ -f ./${file_name} ] || wget "${url}"

atftp --trace --option "timeout 10" --option "mode octet" --put --local-file "${file_name}" 192.168.1.1

