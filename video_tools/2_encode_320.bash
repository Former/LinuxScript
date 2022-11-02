#!/bin/bash
# youtube-dl -f "worst" -o "%(upload_date)s-%(title)s-%(id)s.%(ext)s" $1
#ffmpeg -i $1 -vcodec libx264 -vb 100K -s 320x240 -acodec libmp3lame -ab 16K $1.mkv
#ffmpeg -i $1 -vcodec libxvid -vb 100K -s 320x240 -acodec libmp3lame -ab 16K $1.mkv
#ffmpeg -i $1 -vcodec copy -acodec libopus -ab 20k -strict -2 $1_new.mp4
ffmpeg -i "$1" -vcodec libx264 -vb 100K -s 320x240 -acodec libopus -ab 20k -strict -2 "$1_320.mp4"
