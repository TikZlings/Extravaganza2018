# clean up old video
rm ce_why_R_moles_gray.mp4

# convert to png images
convert -density 160 ce_why_R_moles_gray_clip.pdf ce_why_R_moles_gray.png

# convert to video
ffmpeg -r 10 -ss 00:00:00 -i ce_why_R_moles_gray-%d.png -ss 00:00:04 -i Raketenstart.m4a -shortest ce_why_R_moles_gray_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0 -i ce_why_R_moles_gray_raw.mp4 -o ce_why_R_moles_gray.mp4

# clean up
rm ce_why_R_moles_gray-*.png
rm ce_why_R_moles_gray_raw.mp4

# view :)
#open ce_why_R_moles_gray.mp4
