#!/bin/bash

pdfjam "$1" --scale 0.5 --offset '0 75mm' -o "a6_$1"
 
