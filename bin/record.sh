#!/bin/bash

NOW=$(date +"%b-%d-%y-%Hh%Mm%Ss")
DIR=$(echo $HOME/tmp/recorded)

screencast() {

Xdialog --title "Record Screencast" --screen-center --yesno "Record audio? " 7 40

    case $? in
	0) SOUND=" -f alsa -i pulse";;
	1) SOUND="";;
	255) exit;;
    esac

AREA="$(Xdialog --title "Record Screencast" --screen-center	\
	--no-tags --menubox "" 10 50 1 " " "Entire Screen"	\
	" -w" "Select a Window" " -s" "Specify an area" 2>&1 )"

ffcast$AREA ffmpeg$SOUND $DIR/screencast-$NOW.mkv

}

webcam() {

cd $DIR

MODE=$(Xdialog --title "Record Webcam" --screen-center		\
	--no-tags --menubox "" 10 50 1 "snap" "Snapshots"	\
	"vida" "Video & Audio" "vidwo" "Video (no audio)" 2>&1 )

case "${MODE}" in
    snap) mplayer -input conf=$XDG_CONFIG_HOME/mplayer/input_cap.conf \
		tv:// -tv driver=v4l2:width=800:height=600:device=/dev/video0 -vf screenshot;;
    vida) ;;
    vidwo) ;;
esac

}



case "${1}" in
    -screenshot-root) import -window root $DIR/screenshot-$NOW.png;;
    -screenshot-win) import $DIR/screenshot-$NOW.png;;
    -screencast) screencast;;
    -webcam) webcam;;
    -mic) mic;;
esac