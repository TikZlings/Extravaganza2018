#!/bin/bash

convert2video(){

    # repeat same image n-times
    pdflatex --jobname=$1-repeat "\def\filename{"$1"}\input{repeat}"

    # clean up old video
    rm $1.mp4

    # convert to png images
    convert -density 160 $1-repeat.pdf $1.png

    # convert to video
    ffmpeg -r 10 -ss 00:00:00 -i $1-%d.png -ss 00:00:04 -i JingleBells.m4a -shortest $1_raw.mp4

    # repair video
    HandBrakeCLI --crop 0:0:0:0 -i $1_raw.mp4 -o $1.mp4

}

# Converting
#convert2video extravaganza-2018-credits
#convert2video extravaganza-intermission-TUG
#convert2video extravaganza-intermission-arts
##convert2video extravaganza-intermission-background
#convert2video extravaganza-intermission-bello
#convert2video extravaganza-intermission-cello
#convert2video extravaganza-intermission-coati
#convert2video extravaganza-intermission-drwho
#convert2video extravaganza-intermission-egypt
#convert2video extravaganza-intermission-finale
#convert2video extravaganza-intermission-jodel
#convert2video extravaganza-intermission-mary
#convert2video extravaganza-intermission-merry-christmas
convert2video extravaganza-intermission-mole-gray
#convert2video extravaganza-intermission-moles
##convert2video extravaganza-intermission-mona-lisa
#convert2video extravaganza-intermission-opera
#convert2video extravaganza-intermission-puzzle
#convert2video extravaganza-intermission-riverdance
#convert2video extravaganza-intermission-rock
#convert2video extravaganza-intermission-scouts
#convert2video extravaganza-intermission-sloth
##convert2video extravaganza-intermission-template
#convert2video extravaganza-intermission-thesis
#convert2video extravaganza-intermission-utah

# clean up
rm *.aux
rm *.log
rm *.nav
rm *.snm
rm *.toc
rm *.out
rm *-repeat.pdf
rm *.png
rm *_raw.mp4