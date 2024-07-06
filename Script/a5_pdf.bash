#!/bin/bash

pdfjam "$1" --scale 0.71 --offset '0 50mm' -o "a5_$1"
 
