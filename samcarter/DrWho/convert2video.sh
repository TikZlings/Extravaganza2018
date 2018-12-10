# clean up old video
rm DrWho.mp4

# convert to png images
convert -density 160 DrWho.pdf DrWho.png

# convert to video
ffmpeg -ss 00:00:00 -i DrWho-%d.png -ss 00:09:52 -i DoctorWho.m4a -shortest DrWho_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0 -i DrWho_raw.mp4 -o DrWho.mp4

# clean up
rm DrWho-*.png
rm DrWho_raw.mp4

# view :)
open DrWho.mp4
