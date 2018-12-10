# clean up old video
rm puzzle.mp4

# convert to png images
convert -density 160 puzzle_slow.pdf puzzle.png

# convert to video
ffmpeg -ss 00:00:00 -i puzzle-%d.png -ss 00:00:16 -i BellaNotte.m4a -shortest puzzle_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i puzzle_raw.mp4 -o puzzle.mp4

# clean up
rm puzzle-*.png
rm puzzle_raw.mp4

# view :)
open puzzle.mp4
