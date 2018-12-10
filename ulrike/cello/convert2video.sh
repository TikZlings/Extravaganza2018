# clean up old video
rm celloducks.mp4

# convert to png images
convert -density 160 celloducks.pdf celloducks.png

# convert to video
ffmpeg -r 10 -ss 00:00:00 -i celloducks-%d.png -ss 00:00:13 -i SilentNight.m4a -shortest celloducks_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i celloducks_raw.mp4 -o celloducks.mp4

# clean up
rm celloducks-*.png
rm celloducks_raw.mp4

# view :)
open celloducks.mp4
