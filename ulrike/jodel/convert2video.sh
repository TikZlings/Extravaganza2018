# clean up old video
rm jodel.mp4

# convert to png images
convert -density 160 jodel.pdf jodel.png

# convert to video
ffmpeg -ss 00:00:00 -i jodel-%d.png -ss 00:01:26 -i FranzlLang.m4a -shortest jodel_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i jodel_raw.mp4 -o jodel.mp4

# clean up
rm jodel-*.png
rm jodel_raw.mp4

# view :)
open jodel.mp4
