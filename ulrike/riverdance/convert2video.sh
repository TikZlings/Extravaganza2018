# clean up old video
rm riverdance.mp4

# convert to png images
convert -density 160 riverdance.pdf riverdance.png

# convert to video
ffmpeg -r 10 -ss 00:00:00 -i riverdance-%d.png -ss 00:00:46 -i Riverdance.m4a -shortest riverdance_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i riverdance_raw.mp4 -o riverdance.mp4

# clean up
rm riverdance-*.png
rm riverdance_raw.mp4

# view :)
#open riverdance.mp4
