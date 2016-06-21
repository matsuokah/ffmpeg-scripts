#!/bin/sh

ls *.mov | while read line;
do
  echo $line 
  filename=$(date +"%Y%m%d_%H%M%S").mp4 
  ffmpeg -i "$line" -c:v libx264 -preset medium -crf 18 -b:a 384k -b:v 7680k -r 60 -pix_fmt yuv420p ../mp4/${filename}
done;
