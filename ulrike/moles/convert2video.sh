# clean up old video
rm workingmoles.mp4

# convert to png images
convert -density 160 workingmoles.pdf workingmoles.png

# convert to video
ffmpeg -ss 00:00:00 -i workingmoles-%d.png -ss 00:00:10 -i HighHoitsofftoworkIgo.m4a -shortest workingmoles_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i workingmoles_raw.mp4 -o workingmoles.mp4

# clean up
rm workingmoles-*.png
rm workingmoles_raw.mp4

# view :)
open workingmoles.mp4
