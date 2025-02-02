#!/bin/bash

#sudo apt-get install subversion build-essential libncurses5-dev zlib1g-dev gawk git ccache gettext libssl-dev xsltproc

image_builder_url="https://downloads.openwrt.org/releases/22.03.7/targets/bcm47xx/legacy/openwrt-imagebuilder-22.03.7-bcm47xx-legacy.Linux-x86_64.tar.xz"

file_name="${image_builder_url##*/}"
base="${file_name%.[^.]*.[^.]*}"
ext="${file_name:${#base} + 1}"

image_builder_file=${file_name}
image_builder_dir=${base}

echo ${file_name} ${base} ${ext}

[ -f ./${image_builder_file} ] || wget ${image_builder_url}

[ -d ./${image_builder_dir} ] || tar -xf ${image_builder_file}

cd ${image_builder_dir}

#make image PROFILE= PACKAGES="-lcui" FILES=files/

make image

make info

find . -name "*.trx"
find . -name "root.squashfs"
find . -name "*kernel.bin"
