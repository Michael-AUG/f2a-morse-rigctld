# f2a-morse-rigctld

# Introduction

An updated version of f2a-morse, this time using rigctl to control the rig instead of flrig, while still using 'morse' to create the CW.

I originally designed this simple script to help with my Amateur Radio GB2CW transmissions. I wanted to be able to send reliably sped CW using F2A (Morse code over FM) for others in the local area to hear and decode.

Ordinarily I would either send manually (on a key), or if needed use a computer program. However neither of these options work with FM.

To get round this, I use the morse application (https://gitlab.com/esr/morse-classic) to generate the Morse audio within the Terminal, and use rigctl to:

a) set the rig mode to FM-D 
b) key the PTT 
c) cut the PTT 
d) return the rig mode to FM


# Usage

For this to work, you must have rigctl or rigctld running in the background. In my set up I have a Raspberry Pi connected to the Rig, running rigctld in the background to send my VFO frequency and mode to Cloudlog. This script accesses rigctld (using rigctl -m2) and controls the radio this way.

My previous version of this script used flrig, and this is an option if you cannot/aren't using hamlib for radio control. Alternatively in this shell script is the `send` command which removes all the rig control side and simply plays the Morse on demand. If you wish to use this version, simply (in step 3) change `ptt` for `send`.

The script is designed to send text files, which I tend to name a,b,c,d etc. These files need to be stored in the same folder as the ptt.sh script.

Note the programme is designed to send 13wpm characters, but these are slowed down using the Farnsworth method to whatever speed you choose at the prompt.

If the filename you choose does not exist, the script will return an error. Otherwise the radio should change to FM-D, key up, send the Morse, key down and return to FM. Also in the repo are three plain text files - a, b and c. These are sample files I've used for tx-ing and give you an idea of how you can set the files out.


# Setup

1) Save the ptt.sh file into the directory you wish to operate from. Move to that folder.

2) Enter the command `source ./ptt.sh`. This will instruct your computer to load the function into memory and run it on command.

3) Enter the command `ptt [filename] [speed]` at the prompt.

4) The Morse will play and the radio key up as described above.


# Conclusion

If you've got any questions or queries, please contact me. I am not the writer of the 'morse' software so please direct any 'morse' related queries directly to the team there. This script is a real bodge or fudge, and I don't claim to be overly good at coding. However, if it helps you, please let me know!

73 and happy Morsing!

Michael Topple GM5AUG email: gm5aug@topple.scot
