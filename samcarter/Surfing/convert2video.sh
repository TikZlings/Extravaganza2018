# clean up old video
rm Surfing.mp4

# convert to png images
convert -density 160 Surfing.pdf Surfing.png

# convert to video
ffmpeg -ss 00:00:00 -i Surfing-%d.png -ss 00:00:01 -i BeachBoys.m4a -shortest Surfing_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i Surfing_raw.mp4 -o Surfing.mp4

# clean up
rm Surfing-*.png
rm Surfing_raw.mp4

# view :)
open Surfing.mp4
