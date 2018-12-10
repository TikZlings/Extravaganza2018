# clean up old video
rm sloth.mp4

# convert to png images
convert -density 160 sloth.pdf sloth.png

# convert to video
ffmpeg -ss 00:00:00 -i sloth-%d.png -ss 00:01:14 -i LeeMarvinWanderingStar.m4a -shortest sloth_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i sloth_raw.mp4 -o sloth.mp4

# clean up
rm sloth-*.png
rm sloth_raw.mp4

# view :)
open sloth.mp4
