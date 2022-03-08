#!/bin/bash
yl='\e[32;1m'
bl='\e[36;1m'
gl='\e[32;1m'
rd='\e[31;1m'
mg='\e[0;95m'
blu='\e[34m'
op='\e[35m'
or='\033[1;33m'
bd='\e[1m'
clear 
cat /usr/bin/bannerku | lolcat
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
IPVPS=$(curl -s ipinfo.io/ip )
DOMAIN=$(cat /etc/v2ray/domain)
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s ipinfo.io/ip )
jam=$(date +"%T")
hari=$(date +"%A")
tnggl=$(date +"%d-%B-%Y")
	cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
	cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
	freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
	tram=$( free -m | awk 'NR==2 {print $2}' )
	swap=$( free -m | awk 'NR==4 {print $2}' )
	up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')
echo -e " $bl ║ \e[36;1m• ISP Name          :\e[0m$bd $ISP"
echo -e " $bl ║ \e[36;1m• City              :\e[0m$bd $CITY"
echo -e " $bl ║ \e[36;1m• CPU Model         :\e[0m$bd$cname"
echo -e " $bl ║ \e[36;1m• Number Of Cores   :\e[0m$bd $cores"
echo -e " $gl ║ \e[36;1m• CPU Frequency     :\e[0m$bd$freq MHz"
echo -e " $gl ║ \e[36;1m• Total RAM         :\e[0m$bd $tram MB"
echo -e " $gl ║ \e[36;1m• Waktu             :\e[0m$bd $jam"
echo -e " $mg ║ \e[36;1m• Hari              :\e[0m$bd $hari"
echo -e " $mg ║ \e[36;1m• Tanggal           :\e[0m$bd $tnggl"
echo -e " $mg ║ \e[36;1m• IP VPS            :\e[0m$bd $IPVPS"
echo -e " $mg ║ \e[36;1m• Domain            :\e[0m$bd $DOMAIN"
echo -e  "  ╠══════════════════════════════════════════════════════════╣" | lolcat
echo -e  "  ║                       ┃MENU OPTIONS┃                     ║" |lolcat
echo -e  "  ╠══════════════════════════════════════════════════════════╣" | lolcat
echo -e  " \e[32;1m ║\e[m$bd 1$bl]\e[m$bd Panel SSH & OpenVPN       $bl                            ║"
echo -e  " $gl ║\e[m$bd 2$bl]\e[m$bd Panel Wireguard                $bl                       ║"
echo -e  " $gl ║\e[m$bd 3$bl]\e[m$bd Panel L2tp & Pptp Account          $bl                   ║"
echo -e  " $gl ║\e[m$bd 4$bl]\e[m$bd Panel Sstp  Account               $gl                    ║"
echo -e  " $mg ║\e[m$bd 5$bl]\e[m$bd Panel Ssr & Ss Account         $gl                       ║"
echo -e  " $mg ║\e[m$bd 6$bl]\e[m$bd Panel v2ray                  $gl                         ║"
echo -e  " $bl ║\e[m$bd 7$bl]\e[m$bd Panel VLess                     $mg                      ║"
echo -e  " $bl ║\e[m$bd 8$bl]\e[m$bd Panel TrojanGFW                  $mg                     ║"
echo -e  " $bl ║\e[m$bd 9$bl]\e[m$bd Panel Bengkel VPS                $mg                     ║"
echo -e   "  \e[1;32m╠══════════════════════════════════════════════════════════╣" | lolcat
echo -e   "  ║                       ┃SYSTEM MENU┃                      ║" | lolcat 
echo -e   "  \e[1;32m╠══════════════════════════════════════════════════════════╣" | lolcat
echo -e   " $bl ║\e[m$bd 10$bl]\e[m$bd Add Domain Cloudflare                     $mg           ║"
echo -e   " $mg ║\e[m$bd 11$bl]\e[m$bd Change Port All Account           $mg                   ║"
echo -e   " $gl ║\e[m$bd 12$bl]\e[m$bd Autobackup Data VPS               $mg                   ║"
echo -e   " $gl ║\e[m$bd 13$bl]\e[m$bd Backup Data VPS                  $bl                    ║"
echo -e   " $gl ║\e[m$bd 14$bl]\e[m$bd Restore Data VPS                  $bl                   ║"
echo -e   " $bl ║\e[m$bd 15$bl]\e[m$bd Webmin Menu                       $bl                   ║"
echo -e   " $bl ║\e[m$bd 16$bl]\e[m$bd Limit Bandwith Speed Server        $gl                  ║"
echo -e   " $bl ║\e[m$bd 17$bl]\e[m$bd Check Usage of VPS Ram         $gl                      ║" 
echo -e   " $mg ║\e[m$bd 18$bl]\e[m$bd Reboot VPS                     $gl                      ║"
echo -e   " $mg ║\e[m$bd 19$bl]\e[m$bd Speedtest VPS                 $mg                       ║"
echo -e   " $mg ║\e[m$bd 20$bl]\e[m$bd Information Display System      $mg                     ║" 
echo -e   " $gl ║\e[m$bd 21$bl]\e[m$bd Info Script Auto Install       $mg                      ║"
echo -e   " $gl ║\e[m$bd 22$bl]\e[m$bd Clear Log                   $bl                         ║"
echo -e   " $mg ║\e[m$bd 23$bl]\e[m$bd Auto Reboot                     $gl                     ║"
echo -e   " $mg ║\e[m$bd 24$bl]\e[m$bd Pointing VPS                   $mg                      ║"
echo -e   " $mg ║\e[m$bd 25$bl]\e[m$bd Service Status                  $mg                     ║"
echo -e   " $mg ║\e[m$bd 26$bl]\e[m$bd Cek Bandwidth VPS              $mg                      ║"
echo -e   " $mg ║\e[m$bd 27$bl]\e[m$bd Install BBR              $mg                            ║"
echo -e   " $mg ║\e[m$bd 28$bl]\e[m$bd Install Update ( WAJIB )        $mg                     ║"
echo -e   "  \e[1;32m╠══════════════════════════════════════════════════════════╣" | lolcat
echo -e   "  ║ x)   Exit                                                ║" | lolcat
echo -e   "  \e[1;32m╚══════════════════════════════════════════════════════════╝" | lolcat
echo -e   ""
read -p "     Select From Options [1-28 or x] :  " menu
echo -e   ""
echo -e   ""
echo -e   ""
case $menu in
1)
ssh
;;
2)
wgr
;;
3)
l2tp
;;
4)
sstpp
;;
5)
ssssr
;;
6)
v2raay
;;
7)
vleess
;;
8)
trojaan
;;
9)
format
;;
10)
panel-domain
;;
11)
change-port
;;
12)
autobackup
;;
13)
backup
;;
14)
restore
;;
15)
wbmn
;;
16)
limit-speed
;;
17)
ram
;;
18)
reboot
;;
19)
speedtest
;;
20)
info
;;
21)
about
;;
22)
clear-log
;;
23)
autoreboot
;;
24)
pointing
;;
25)
geo
;;
26)
bw
;;
27)
bbr
;;
28)
rm -rf paket.sh && apt install curl && wget https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu-all/paket.sh && apt install dos2unix && dos2unix paket.sh && chmod +x paket.sh && ./paket.sh
;;
29)
systemctl restart shadowsocks-libev-server@tls && systemctl restart shadowsocks-libev-server@http
;;
34)
;;
35)
;;
x)
exit
;;
*)
clear
menu
;;
esac
