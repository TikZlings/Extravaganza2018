# clean up old video
rm finale.mp4

# convert to png images
convert -density 160 finale.pdf finale.png

# convert to video
ffmpeg -r 12 -ss 00:00:00 -i finale-%d.png -ss 00:00:38 -i Beethoven9.m4a -shortest finale_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i finale_raw.mp4 -o finale.mp4

# clean up
rm finale-*.png
rm finale_raw.mp4

# view :)
open finale.mp4
