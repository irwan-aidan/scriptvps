#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
bl='\e[36;1m'
bd='\e[1m'
MYIP=$(wget -qO- ifconfig.co);
echo "Checking VPS"
IZIN=$( curl https://raw.githubusercontent.com/geogabut/private/main/kepo/ipvps | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo "Only For Premium Users"
exit 0
fi
clear
figlet PANEL V2RAY | lolcat
echo -e "\e[1;32m══════════════════════════════════════════\e[m" | lolcat
echo -e "          \e[1;31m\e[1;31m═[\e[mAll Account V2Ray\e[1;31m]═\e[m" 
echo -e "\e[1;32m══════════════════════════════════════════\e[m" | lolcat
echo -e "$bd 1$bl]\e[m $bd Create Vmess Websocket Account"
echo -e "$bd 2$bl]\e[m $bd Delete Vmess Websocket Account"
echo -e "$bd 3$bl]\e[m $bd Renew Vmess Account"
echo -e "$bd 4$bl]\e[m $bd Check User Login Vmess"
echo -e "$bd 5$bl]\e[m $bd Create Trial Vmess Websocket Account"
echo -e ""
echo -e "\e[1;32m══════════════════════════════════════════\e[m" | lolcat
echo -e " x)   MENU   \e[m"   | lolcat
echo -e "\e[1;32m══════════════════════════════════════════\e[m" | lolcat
echo -e ""
read -p "     Please Input Number  [1-5 or x] :  "  v2ray
echo -e ""
case $v2ray in
1)
add-ws
;;
2)
del-ws
;;
3)
renew-ws
;;
4)
cek-ws
;;
5)
trialws
;;
x)
menu
;;
*)
echo "Please enter an correct number"
;;
esac
