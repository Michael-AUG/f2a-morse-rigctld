#F2A Morse sender for GB2CW
# (c) Michael Topple GM5AUG
# gm5aug@topple.scot

#!/bin/bash

DISPLAY=:0  #Overcomes an issue with not being able to access the soundcard on rig
echo Filename?
read varname # asks user to choose file to send
echo Speed?
read speed # asks user to choose speed to send (coupled with Farnsworth speed)
FILE=$varname
if test -f "$FILE"; then
    echo "$FILE exists."    # if the file exists
else
    echo "$FILE does not exist."    # if it doesn't
fi
rigctl -m2 \set_mode PKTFM 0   # accesses the rig through rigctl and sets mode to FM-D (to receive soundcard audio)
rigctl -m2 \set_ptt 1   # keys rig's PTT
morse -w $speed -F 13 -a < $varname  # runs morse app with chosen variables
rigctl -m2 \set_ptt 0   # unkeys rig's PTT
rigctl -m2 \set_mode FM 0   # returns rig to FM
