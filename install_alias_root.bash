#!/bin/bash

# Copyright 2025 by Alexei Bezborodov <AlexeiBv+linux_script@narod.ru> 
# License: Public domain: http://unlicense.org/ 
# Общественное достояние 

cur_dir=$(pwd)

alias_dir="${cur_dir}/Script"

echo "alias_dir='${alias_dir}'" >> /root/.bashrc
echo "source ${alias_dir}/alias_main" >> /root/.bashrc
