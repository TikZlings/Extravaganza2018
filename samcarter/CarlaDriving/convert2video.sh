# clean up old video
rm CarlaDriving.mp4

# convert to png images
convert -density 160 CarlaDriving.pdf CarlaDriving.png

# convert to video
ffmpeg -ss 00:00:00 -i CarlaDriving-%d.png -ss 00:00:08 -i Bonanza.m4a -shortest CarlaDriving_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i CarlaDriving_raw.mp4 -o CarlaDriving.mp4

# clean up
rm CarlaDriving-*.png
rm CarlaDriving_raw.mp4

# view :)
open CarlaDriving.mp4
