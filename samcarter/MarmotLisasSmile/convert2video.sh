# clean up old video
rm MarmotLisasSmile.mp4

# convert to png images
convert -density 160 MarmotLisasSmile.pdf MarmotLisasSmile.png

# convert to video
ffmpeg -ss 00:00:00 -i MarmotLisasSmile-%d.png -ss 00:00:29 -i NatKingCole.m4a -shortest MarmotLisasSmile_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i MarmotLisasSmile_raw.mp4 -o MarmotLisasSmile.mp4

# clean up
rm MarmotLisasSmile-*.png
rm MarmotLisasSmile_raw.mp4

# view :)
open MarmotLisasSmile.mp4
