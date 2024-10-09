#!/bin/bash

cur_dir=$(pwd)

echo "alias_dir='${cur_dir}'" >> ~/.bashrc
echo "source ${cur_dir}/alias_config" >> ~/.bashrc
