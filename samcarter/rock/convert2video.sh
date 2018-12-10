# clean up old video
rm rock.mp4

# convert to png images
convert -density 160 rock.pdf rock.png

# convert to video
ffmpeg -ss 00:00:00 -i rock-%d.png -ss 00:00:10 -i BlackSabbath.m4a -shortest rock_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i rock_raw.mp4 -o rock.mp4

# clean up
rm rock-*.png
rm rock_raw.mp4

# view :)
open rock.mp4
