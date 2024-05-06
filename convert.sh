#!/bin/bash

echo "input file name: "
read input
echo "output file name (without extension, that'll be mov): "
read output

ffmpeg -i "$input" -c:v dnxhd -vf "scale=1280:720,fps=60,format=yuv422p" -b:v 110M -c:a pcm_s16le "$output.mov"
