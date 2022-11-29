Readme for the DAS screen setup.

First second explains how to setup a Rock Pi from scratch and the second section explains how to update the video content using FTP.

Each screen has it's own Rock Pi computer except for one of them whoch has a Raspberry Pi computer. The Rock Pis are running Debian Linux. The Raspberry is running Raspberry OS which is a port of Debian. That means that setup on the Raspberry is similar to set on the Rock Pis.

If the Rock Pi is brand new, it needs an operating system. We use Debian Bulls Eye. Installation is easy, but requires and sd card and sd card reader. More info here:
https://wiki.radxa.com/Rock4/getting_started

After installing Debian, we would like to setup the Rock Pi for one of the club screens. Do the following: 
Connect it to a monitor using HDMI.
Connect it to the internet using a LAN cable. 
Connect it to a power source using USB-C (for Rock Pi) and Micro USB (for Raspberry). 

When the device is finished booting, log in. This is done with user credentials:
rock
rock
for the Rock Pi. The Raspberry should login automatically.

The device should have internet connection from the cable you connected. We need to use the connection to download a zip file. Note that if you are used to a Danish keyboard, it can be hard to type the url because the keyboard layout is set to US (we will fix this in a moment). Use the following image to help with the typing:

https://en.wikipedia.org/wiki/British_and_American_keyboards#/media/File:KB_United_Kingdom.svg

The zip file you need is in the following url. Type the url manually into the browser address line.

https://github.com/ahaahr/DASDisplays/blob/master/scripts/startup.sh

Save it in the Downlaod folder (that's the default location) and unzip it by opening the terminal and typing the following commands:

cd Downloads
unzip setup.zip
cd setup
sudo sh setup.sh

It will ask you for a password. Type: rock

You will be prompted to answer Y/n after a few seconds. Type Y and press enter. The script will tage a couple of minutes to run. After completing it should reboot and the default video will be displayed. 

The video can be changed by replacing the file called video.mp4 in ~/Desktop.
