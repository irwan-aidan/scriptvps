#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
bl='\e[36;1m'
bd='\e[1m'
MYIP=$(wget -qO- ifconfig.co);
echo "Checking VPS"
IZIN=$( curl https://raw.githubusercontent.com/dpvpn09/ipvps/main/ipvps | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo "Only For Premium Users"
exit 0
fi
clear
echo -e ""
figlet Panel TrojanGO | lolcat
echo -e "\e[1;32m══════════════════════════════════════════\e[m" | lolcat
echo -e "         \e[1;31m\e[1;31m═[\e[mAll Account TrojanGO\e[1;31m]═\e[m" 
echo -e "\e[1;32m══════════════════════════════════════════\e[m" | lolcat
echo -e " 1)  Create Trojan-GO Account"
echo -e " 2)  Deleting Trojan-GO Account"
echo -e " 3)  Renew Trojan-GO Account"
echo -e " 4)  Check User Login Trojan-GO"
echo -e ""
echo -e "\e[1;32m══════════════════════════════════════════\e[m" | lolcat
echo -e " x)   MENU"
echo -e "\e[1;32m══════════════════════════════════════════\e[m" | lolcat
echo -e ""
read -p "     Please Input Number  [1-4 or x] :  "  trojan
echo -e ""
case $trojan in
1)
add-trgo
;;
2)
del-trgo
;;
3)
renew-trgo
;;
4)
cek-trgo
;;
x)
menu
;;
*)
echo "Please enter an correct number"
;;
esac
