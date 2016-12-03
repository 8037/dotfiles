#!/bin/bash

for i in *.gif ; do
	ffmpeg -i "$i" -pix_fmt yuv320p -c:v libvpx -crf 12 -b:v 500K "$(basename "${i/.gif}").webm" && rm $i
done
