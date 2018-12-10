# clean up old video
rm SingingMouse.mp4

# convert to png images
convert -density 160 SigningMouseRepeat.pdf SingingMouse.png

# convert to video
ffmpeg -r 10 -ss 00:00:00 -i SingingMouse-%d.png -ss 00:00:05 -i WewishyouaMerryChristmas.m4a -shortest SingingMouse_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0 -i SingingMouse_raw.mp4 -o SingingMouse.mp4

# clean up
rm SingingMouse-*.png
rm SingingMouse_raw.mp4

# view :)
open SingingMouse.mp4
