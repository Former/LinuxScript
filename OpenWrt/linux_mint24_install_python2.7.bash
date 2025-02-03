#!/bin/bash
# LinuxMint 24
wget "https://archive.ubuntu.com/ubuntu/pool/universe/p/python2.7/libpython2.7_2.7.18-13ubuntu1.5_amd64.deb"

wget "https://archive.ubuntu.com/ubuntu/pool/universe/p/python2.7/libpython2.7-stdlib_2.7.18-13ubuntu1.5_amd64.deb"

wget "https://archive.ubuntu.com/ubuntu/pool/universe/p/python2.7/python2.7-minimal_2.7.18-13ubuntu1.5_amd64.deb"

wget "https://archive.ubuntu.com/ubuntu/pool/universe/p/python2.7/libpython2.7-minimal_2.7.18-13ubuntu1.5_amd64.deb"

sudo apt-get install libnsl2

sudo dpkg -i python2.7-minimal_2.7.18-13ubuntu1.5_amd64.deb libpython2.7_2.7.18-13ubuntu1.5_amd64.deb libpython2.7-stdlib_2.7.18-13ubuntu1.5_amd64.deb libpython2.7-minimal_2.7.18-13ubuntu1.5_amd64.deb




