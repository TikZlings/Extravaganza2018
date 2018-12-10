# clean up old video
rm thesis.mp4

# convert to png images
convert -density 160 thesis.pdf thesis.png

# convert to video
ffmpeg -ss 00:00:00 -i thesis-%d.png -ss 00:00:00 -i Cheering.m4a -shortest thesis_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i thesis_raw.mp4 -o thesis.mp4

# clean up
rm thesis-*.png
rm thesis_raw.mp4

# view :)
open thesis.mp4
