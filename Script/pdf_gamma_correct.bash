#!/bin/bash

gamma=$2
[ gamma == '' ] && gamma=3

mkdir tmp
convert -density 300 $1 tmp/output-%03d.jpg
convert tmp/output*.jpg -gamma ${gamma} tmp/final-%03d.jpg
# convert tmp/output*.jpg -level 0% tmp/final-%03d.jpg
convert tmp/final*.jpg new_$1
