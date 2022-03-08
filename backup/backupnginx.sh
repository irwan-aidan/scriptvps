#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com);
echo "Checking VPS"

IP=$(wget -qO- icanhazip.com);
clear
sleep 1
echo Membuat Directory
mkdir /root/backup
sleep 1
echo Start Backup
clear
cp /etc/passwd backup/
cp /etc/group backup/
cp /etc/shadow backup/
cp /etc/gshadow backup/
cp -r /etc/wireguard backup/wireguard
cp /etc/ppp/chap-secrets backup/chap-secrets
cp /etc/ipsec.d/passwd backup/passwd1
cp /etc/shadowsocks-libev/akun.conf backup/ss.conf
cp -r /var/lib/premium-script/ backup/premium-script
cp -r /home/sstp backup/sstp
cp -r /etc/v2ray backup/v2ray
cp -r /etc/trojan backup/trojan
cp -r /usr/local/shadowsocksr/ backup/shadowsocksr
cp -r /home/vps/public_html backup/public_html
cd /root
zip -r backup.zip /root
cp -r backup.zip /home/vps/public_html
cd
clear

echo -e "Berikut merupakan link untuk download backup file anda.

Link download: http://$MYIP:81/backup.zip

Untuk restore file backup anda, sila download dan upload file diatas secara manual

Terima kasih telah menggunakan script Geo Gabut"
echo -e ""
rm -rf /root/backup
rm -r /root/backup.zip
