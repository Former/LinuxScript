#!/bin/bash
# Ubuntu
#sudo apt-get install gcc-multilib g++-multilib git libncurses-dev gawk perl python3-distutils
#-sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.12 10
# AltLinux - не удалось запустить
#sudo apt-get install perl-IPC-Cmd perl-CPAN
#cpan JSON

# wl500gpv2 https://archive.openwrt.org/releases/22.03.0/targets/bcm47xx/legacy/openwrt-sdk-22.03.0-bcm47xx-legacy_gcc-11.2.0_musl.Linux-x86_64.tar.xz

# wl520gu url="https://downloads.openwrt.org/releases/19.07.6/targets/brcm47xx/legacy/openwrt-sdk-19.07.6-brcm47xx-legacy_gcc-7.5.0_musl.Linux-x86_64.tar.xz" # Fix gcc version include/prereq-build.mk: grep -E '^(4\.[8-9]|[5-9]\.?|13\.?)'

# dir 620 c1 (asus_rt-n15u) url="https://downloads.openwrt.org/releases/23.05.5/targets/bcm47xx/mips74k/openwrt-sdk-23.05.5-bcm47xx-mips74k_gcc-12.3.0_musl.Linux-x86_64.tar.xz"

# wl520gu 17.01.7
url="https://archive.openwrt.org/releases/17.01.7/targets/brcm47xx/legacy/lede-sdk-17.01.7-brcm47xx-legacy_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz"

file_name="${url##*/}"
base="${file_name%.[^.]*.[^.]*}"
ext="${file_name:${#base} + 1}"

sdk_name=${base}
sdk=${file_name}

[ -f ./${sdk} ] || wget "${url}"

[ -d ./${sdk_name} ] || tar -xf "${sdk}"

[ -f ./n2n ] || git clone https://github.com/ntop/n2n n2n

N2N_PKG_VERSION=$(n2n/scripts/version.sh)
echo $N2N_PKG_VERSION

cp -r n2n/packages/openwrt ${sdk_name}/package/n2n

cd ${sdk_name}

make oldconfig

make package/n2n/clean V=s

make package/n2n/prepare USE_SOURCE_DIR=$(realpath ../n2n) V=s

make package/n2n/compile V=s

find . -name "n2n*.ipk"



