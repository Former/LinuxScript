#!/bin/bash
youtube-dl -f "worstvideo+worstaudio/hls-193/hls-194/hls-196/hls-192/hls-195/hls-208/mpd-1/worst" -i -o "%(upload_date)s-%(title)s-%(id)s.%(ext)s" $1
