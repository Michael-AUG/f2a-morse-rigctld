#F2A Morse sender for GB2CW
# (c) Michael Topple GM5AUG
# gm5aug@topple.scot

#!/bin/bash

function ptt() {
FILE=$1 #defines the first variable after 'ptt' to be the filename
speed=$2 #defines the second variable after 'ptt' to be the speed

DISPLAY=:0  #Overcomes an issue with not being able to access the soundcard on rig
rigctl -m2 \set_mode PKTFM 0   # accesses the rig through rigctl and sets mode to FM-D (to receive soundcard audio)
rigctl -m2 \set_ptt 1   # keys rig's PTT
morse -w $speed -F 13 -a < $FILE  # runs morse app with chosen variables
rigctl -m2 \set_ptt 0   # unkeys rig's PTT
rigctl -m2 \set_mode FM 0   # returns rig to FM
}

function send() {

FILE=$1 #defines the first variable after 'ptt' to be the filename
speed=$2 #defines the second variable after 'ptt' to be the speed

DISPLAY=:0  #Overcomes an issue with not being able to access the soundcard on rig
morse -w $speed -F 13 -a < $FILE  # runs morse app with chosen variables
}
