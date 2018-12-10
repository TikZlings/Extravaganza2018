# clean up old video
rm ce_owl.mp4

# convert to png images
convert -density 160 ce_owl.pdf ce_owl.png

# convert to video
ffmpeg -ss 00:00:00 -r 3 -i ce_owl-%d.png ce_owl_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0 -i ce_owl_raw.mp4 -o ce_owl.mp4

# clean up
rm ce_owl-*.png
rm ce_owl_raw.mp4

# view :)
#open ce_owl.mp4
