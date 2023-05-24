# f2a-morse-rigctld
An updated version of f2a-morse, this time using rigctl to control the rig instead of flrig, while still using 'morse' to create the CW.

I originally designed this simple script to help with my Amateur Radio GB2CW transmissions. I wanted to be able to send reliably sped CW using F2A (Morse code over FM) for others in the local area to hear and decode.

Ordinarily I would either send manually (on a key), or if needed use a computer program. However neither of these options work with FM.

To get round this, I use the morse application (https://gitlab.com/esr/morse-classic) to generate the Morse audio within the Terminal, and use rigctl to:

a) set the rig mode to FM-D 
b) key the PTT 
c) cut the PTT 
d) return the rig mode to FM

For this to work, you must have rigctl or rigctld running in the background. In my set up I have a Raspberry Pi connected to the Rig, running rigctld in the background to send my VFO frequency and mode to Cloudlog. This script accesses rigctld (using rigctl -m2) and controls the radio this way.

My previous version of this script used flrig, and this is an option if you cannot/aren't using hamlib for radio control.

The script is designed to send text files, which I tend to name a,b,c,d etc. These files need to be stored in the same folder as the ptt.sh script. Run the file ($ sh ptt.sh) and, at the prompt, choose the filename (ie. a). At the next prompt choose the overall wordspeed you wish to send at.

Note the programme is designed to send 13wpm characters, but these are slowed down using the Farnsworth method to whatever speed you choose at the prompt.

If the filename you choose does not exist, the script will return an error. Otherwise the radio should change to FM-D, key up, send the Morse, key down and return to FM. Also in the repo are three plain text files - a, b and c. These are sample files I've used for tx-ing and give you an idea of how you can set the files out.

If you've got any questions or queries, please contact me. I am not the writer of the 'morse' software so please direct any 'morse' related queries directly to the team there. This script is a real bodge or fudge, and I don't claim to be overly good at coding. However, if it helps you, please let me know!

73 and happy Morsing!

Michael Topple GM5AUG email: gm5aug@topple.scot
