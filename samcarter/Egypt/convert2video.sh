# clean up old video
rm Egypt.mp4

# convert to png images
convert -density 160 Egypt.pdf Egypt.png

# convert to video
ffmpeg -ss 00:00:00 -i Egypt-%d.png -ss 00:00:00 -i Aida.m4a -filter:a "volume=0.8" -shortest Egypt_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i Egypt_raw.mp4 -o Egypt.mp4

# clean up
rm Egypt-*.png
rm Egypt_raw.mp4

# view :)
open Egypt.mp4
