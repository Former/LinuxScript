#!/bin/bash

cur_dir=$(pwd)

alias_dir="${cur_dir}/Script"

echo "alias_dir='${alias_dir}'" >> ~/.bashrc
echo "source ${alias_dir}/alias_main" >> ~/.bashrc
