#Wifi. Uncomment and The following four lines and replace SSID and PASSWORD with actual values. Dont remove the "". 
#This is not recommended. Use cabled network access instead to improve stability.
#sudo su
#nmcli r wifi on
#nmcli dev wifi list
#nmcli dev wifi connect "SSID" password "PASSWORD"

#Switch keyboard layout to Danish:
setxkbmap -option grp:alt_shift_toggle dk,dk

#Install OS updates:
yes | apt update
yes | apt upgrade

#Install VLC Player
apt install vlc

#Disable the login screen
yes | cp -rf lightdm.conf /etc/lightdm

#Copy startup files to correct folders
cp startup.sh /usr/local/share
cp start.desktop ~/.config/autostart

#Install and Setup FTP server
yes | apt install vsftpd
systemctl enable vsftpd
echo "rock" | tee -a /etc/vsftpd.userlist
chmod -R 750 /home/rock/Desktop
chown -R rock: /home/rock/Desktop
yes | cp -f vsftpd.conf /etc

#Copy the default video to the desktop
cp video.mp4 ~/Desktop

#Reboot
reboot