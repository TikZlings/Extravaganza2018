# clean up old video
rm Phantom.mp4

# convert to png images
convert -density 160 Phantom.pdf Phantom.png

# convert to video
ffmpeg -ss 00:00:00 -i Phantom-%d.png -ss 00:00:22 -i ThePhantomoftheOpera.m4a -shortest Phantom_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i Phantom_raw.mp4 -o Phantom.mp4

# clean up
rm Phantom-*.png
rm Phantom_raw.mp4

# view :)
open Phantom.mp4
