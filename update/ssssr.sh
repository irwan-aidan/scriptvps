#!/bin/bash
clear

MYIP=$(wget -qO- ifconfig.co);
echo -e "═══════════════════════════════════════\e[m" | lolcat
echo -e "SSR & SS Account" 
echo -e "═══════════════════════════════════════\e[m" | lolcat
echo -e " 1)  Create SSR Account"
echo -e " 2)  Create Shadowsocks Account"
echo -e " 3)  Deleting SSR Account"
echo -e " 4)  Delete Shadowsocks Account"
echo -e " 5)  Renew SSR Account Active"
echo -e " 6)  Renew Shadowsocks Account"
echo -e " 7)  Check User Login Shadowsocks"
echo -e " 8)  Show Other SSR Menu"
echo -e "══════════════════════════════════════════" | lolcat
echo -e " x)   MENU"
echo -e "══════════════════════════════════════════" | lolcat
read -p "Please Input Number  [1-8 or x]: " ssssr

case $ssssr in
1)
add-ssr
;;
2)
add-ss
;;
3)
del-ssr
;;
4)
del-ss
;;
5)
renew-ssr
;;
6)
renew-ss
;;
7)
cek-ss
;;
8)
ssr
;;
x)
menu
;;
*)
echo "Please enter an correct number"
;;
esac
