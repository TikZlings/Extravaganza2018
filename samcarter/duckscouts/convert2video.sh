# clean up old video
rm duckscouts.mp4

# convert to png images
convert -density 160 duckscouts.pdf duckscouts.png

# convert to video
ffmpeg -ss 00:00:00 -i duckscouts-%d.png -ss 00:00:00 -i IMetABear.m4a -shortest duckscouts_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i duckscouts_raw.mp4 -o duckscouts.mp4

# clean up
rm duckscouts-*.png
rm duckscouts_raw.mp4

# view :)
open duckscouts.mp4
