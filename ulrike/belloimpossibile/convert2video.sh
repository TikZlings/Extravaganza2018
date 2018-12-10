# clean up old video
rm belloimpossibile.mp4

# convert to png images
convert -density 160 belloimpossibile.pdf belloimpossibile.png

# convert to video
ffmpeg -r 10 -ss 00:00:00 -i belloimpossibile-%d.png -ss 00:00:00 -i GiannaNannini.m4a -shortest belloimpossibile_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i belloimpossibile_raw.mp4 -o belloimpossibile.mp4

# clean up
rm belloimpossibile-*.png
rm belloimpossibile_raw.mp4

# view :)
open belloimpossibile.mp4
