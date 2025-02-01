#!/bin/bash
# Ubuntu
#sudo apt-get install gcc-multilib g++-multilib git libncurses-dev gawk perl python3-distutils
#-sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.12 10
# AltLinux
#sudo apt-get install perl-IPC-Cmd perl-CPAN
#cpan JSON

# https://downloads.openwrt.org/snapshots/targets/bcm47xx/legacy/openwrt-sdk-bcm47xx-legacy_gcc-13.3.0_musl.Linux-x86_64.tar.zst
# https://archive.openwrt.org/releases/19.07.0/targets/brcm47xx/legacy/
# wget https://archive.openwrt.org/releases/21.02.1/targets/bcm47xx/legacy/
sdk_name=openwrt-sdk-22.03.0-bcm47xx-legacy_gcc-11.2.0_musl.Linux-x86_64
sdk=${sdk_name}.tar.xz

[ -f ./${sdk} ] || wget https://archive.openwrt.org/releases/22.03.0/targets/bcm47xx/legacy/${sdk}

[ -d ./${sdk_name} ] || tar -xf ${sdk}

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

