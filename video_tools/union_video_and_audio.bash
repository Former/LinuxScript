#!/bin/bash
ffmpeg -i $1  -i $2 -c:a aac -b:a 128k -vcodec copy -map 0:v -map 1:a o.mp4

