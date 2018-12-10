# clean up old video
rm MaryDuck.mp4

# convert to png images
convert -density 160 MaryDuck.pdf MaryDuck.png

# convert to video
ffmpeg -r 10 -ss 00:00:00 -i MaryDuck-%d.png -ss 00:00:00 -i chimney.mp3 -shortest MaryDuck_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i MaryDuck_raw.mp4 -o MaryDuck.mp4

# clean up
rm MaryDuck-*.png
rm MaryDuck_raw.mp4

# view :)
#open MaryDuck.mp4
