#!/bin/bash
RED='\e[1;31m'
GREEN='\e[0;32m'
BLUE='\e[0;34m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com);
echo -e  "${RED}Checking VPS${NC}"
sleep 2
IZIN=$( curl https://raw.githubusercontent.com/dpvpn09/ipvps/main/ipvps | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${GREEN}Permission Accepted...${NC}"
sleep 2 
else
clear
echo -e ""
echo -e "======================================="
echo -e ""
echo -e "${RED}Permission Denied...!!! ${NC}"
echo -e "IP VPS ANDA BELUM TERDAFTAR"
echo -e "Contact WA https//wa.me/+6281285970456"
echo -e "For Registration IP VPS"
echo -e ""
echo -e "======================================="
echo -e ""
rm setup.sh
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
