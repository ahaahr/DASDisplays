Readme for the DAS screen setup.

Each screen has it's own Rock Pi computer except for one of them whoch has a Raspberry Pi computer. The Rock Pis are running Debian Linux. The Raspberry is running Raspberry OS which is a port of Debian. That means that setup on the Raspberry is similar to set on the Rock Pis.

To setup one of the micro computers, do the following. Connect it to a monitor using HDMI. Connect it to the internet using a LAN cable. Connect it to a power source using USB-C (for Rock Pi) and Micro USB (for Raspberry). 

When the device is finished booting, log in. This is done with user credentials:
rock
rock
for the Rock Pi. The Raspberry should login automatically.

The device should have internet connection from the cable you connected. We ned to use the connection to download a script. Note that if you are used to a Danish keyboard, it can be hard to type the url because the keyboard layout is set to US (we will fix this in a moment). Use the following image to help with the typing:

https://en.wikipedia.org/wiki/British_and_American_keyboards#/media/File:KB_United_Kingdom.svg

The script you need is here:

https://www.dropbox.com/s/27io5iqlsbkz2un/setup.sh?dl=0

Save it in the Downlaod folder (that's the default location) and execute it by opening the terminal and typing the following commands:

cd Downloads
sudo sh setup.sh

It will ask you for a password. Type: rock

You will be prompted to answer Y/n after a few seconds. Type Y and press enter. The script will tage a couple of minutes to run.
