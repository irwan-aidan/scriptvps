#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
bl='\e[36;1m'
bd='\e[1m'
MYIP=$(wget -qO- ifconfig.co);
echo "Checking VPS"
clear
figlet DOMAIN | lolcat -d 5
echo -e ""
echo -e "\e[1;32m═════════════════════════════════════════" | lolcat
echo -e "          \e[1;31m\e[1;31m═[\e[mSection DOMAIN\e[1;31m]═\e[m" 
echo -e "\e[1;32m═════════════════════════════════════════" | lolcat
echo -e   " $bl ║\e[m$bd 1$bl]\e[m$bd Add Subdomain Host For VPS                             "
echo -e   " $bl ║\e[m$bd 2$bl]\e[m$bd Add ID Cloudflare"
echo -e   " $bl ║\e[m$bd 3$bl]\e[m$bd Cloudflare Add-Ons" 
echo -e   " $bl ║\e[m$bd 4$bl]\e[m$bd Pointing BUG"
echo -e   " $bl ║\e[m$bd 5$bl]\e[m$bd Renew Certificate V2RAY"
echo -e   " $bl ║\e[m$bd 6$bl]\e[m$bd Add Multi Domain"
echo -e "\e[1;32m══════════════════════════════════════════" | lolcat
echo -e " x)   MENU        " | lolcat
echo -e "\e[1;32m══════════════════════════════════════════" | lolcat
echo -e ""
read -p "     Please Input Number  [1-10 or x] :  "  key
echo -e ""
case $key in
1)
 add-host
 ;;
 2)
 cff
 ;;
 3)
 cfd
 ;;
 4)
 cfh
 ;;
 5)
 certv2ray
 ;;
 6)
 host
;;
x)
exit
;;
*)
clear
menu
;;
esac
