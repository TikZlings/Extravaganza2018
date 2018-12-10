# clean up old video
rm CarLaTeXDriving.mp4

# convert to png images
convert -density 160 CarLaTeXDriving.pdf CarLaTeXDriving.png

# convert to video
ffmpeg -ss 00:00:00 -i CarLaTeXDriving-%d.png -ss 00:00:08 -i Bonanza.m4a -shortest CarLaTeXDriving_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0 -i CarLaTeXDriving_raw.mp4 -o CarLaTeXDriving.mp4

# clean up
rm CarLaTeXDriving-*.png
rm CarLaTeXDriving_raw.mp4

# view :)
open CarLaTeXDriving.mp4
