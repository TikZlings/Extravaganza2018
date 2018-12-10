# clean up old video
rm coati.mp4

# convert to png images
convert -density 160 coati.pdf coati.png

# convert to video
ffmpeg -ss 00:00:00 -i coati-%d.png -ss 00:00:16 -i BingCrosby.m4a -shortest coati_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i coati_raw.mp4 -o coati.mp4

# clean up
rm coati-*.png
rm coati_raw.mp4

# view :)
open coati.mp4
