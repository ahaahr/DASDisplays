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
yes | apt install vlc

#Disable the login screen
yes | cp -rf lightdm.conf /etc/lightdm

#Copy startup files to correct folders
cp startup.sh /usr/local/share
mkdir -p /home/rock/.config/autostart
cp startup.desktop /home/rock/.config/autostart
chmod +x /usr/local/share/startup.sh

#Install and Setup FTP server
yes | apt install vsftpd
systemctl enable vsftpd
echo "rock" | tee -a /etc/vsftpd.userlist
cp -f vsftpd.conf /etc

#Copy the default video to the desktop
cp video.mp4 /home/rock/Desktop

#Reboot
reboot