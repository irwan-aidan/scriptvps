#!/bin/bash
clear

echo -e "═════════════════════════════════════════" | lolcat
echo -e "          [SSH & OpenVPN Menu]" 
echo -e "═════════════════════════════════════════" | lolcat
echo -e " 1)  Create SSH & OpenVPN Account"
echo -e " 2)  Trial Account SSH & OpenVPN"
echo -e " 3)  Renew SSH & OpenVPN Account"
echo -e " 4)  Delete SSH & OpenVPN Account"
echo -e " 5)  Check User Login SSH & OpenVPN"
echo -e " 6)  List Member SSH & OpenVPN"
echo -e " 7)  Delete User Expired SSH & OpenVPN"
echo -e " 8)  Set up Autokill SSH"
echo -e " 9)  Cek Users Who Do Multi Login SSH"
echo -e " 10) Restart Service Dropbear, Squid3"
echo -e "══════════════════════════════════════════" | lolcat
echo -e " x)  MENU"
echo -e "══════════════════════════════════════════" | lolcat
read -p "Please Input Number  [1-10 or x]: "  ssh
case $ssh in
1)
  usernew
;;
2)
  trial
;;
3)
  renew
;;
4)
  deluser
;;
5)
  cek
;;
6)
  member
;;
7)
  delete
;;
8)
  autokill
;;
9)
  ceklim
;;
10)
  restart
;;
x)
  exit
;;
*)
  echo "Please enter an correct number"
;;
esac
