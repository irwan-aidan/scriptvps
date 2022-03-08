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
figlet VNSTAT | lolcat -d 5
echo -e ""
echo -e  "  ╔══════════════════════════════════════════════════════════╗" | lolcat
echo -e  "  ║                       ┃BANDWITH MONITOR┃                 ║" |lolcat
echo -e   "  ╚══════════════════════════════════════════════════════════╝" | lolcat
echo -e ""
echo -e "     \e[m$bd 1$bl]\e[m$bd Lihat Total Bandwith Tersisa"
echo -e "     \e[m$bd 2$bl]\e[m$bd Tabel Penggunaan Setiap 5 Menit"
echo -e "     \e[m$bd 3$bl]\e[m$bd Tabel Penggunaan Setiap Jam"
echo -e "     \e[m$bd 4$bl]\e[m$bd Tabel Penggunaan Setiap Hari"
echo -e "     \e[m$bd 5$bl]\e[m$bd Tabel Penggunaan Setiap Bulan"
echo -e "     \e[m$bd 6$bl]\e[m$bd Tabel Penggunaan Setiap Tahun"
echo -e "     \e[m$bd 7$bl]\e[m$bd Tabel Penggunaan Tertinggi"
echo -e "     \e[m$bd 8$bl]\e[m$bd Statistik Penggunaan Setiap Jam"
echo -e "     \e[m$bd 9$bl]\e[m$bd Lihat Penggunaan Aktif Saat Ini"
echo -e "    \e[m$bd 10$bl]\e[m$bd Lihat Trafik Penggunaan Aktif Saat Ini [5s]"
echo -e "     x =>   Keluar"
echo -e "${off}"
echo -e  "  ══════════════════════════════════════════════════════════" | lolcat
echo -e "${bl}"
read -p "     [#]  Masukkan Nomor :  " noo
echo -e "${off}"
clear
case $noo in
1)
figlet VNSTAT | lolcat -d 5
echo -e  "  ╔══════════════════════════════════════════════════════════╗" | lolcat
echo -e  "  ║            ┃TOTAL BANDWITH SERVER TERSISA┃               ║" |lolcat
echo -e   "  ╚══════════════════════════════════════════════════════════╝" | lolcat
echo -e ""

vnstat

echo -e ""
echo -e  "  ══════════════════════════════════════════════════════════" | lolcat
echo -e "$baris2" | lolcat
;;

2)
figlet VNSTAT | lolcat -d 5
echo -e  "  ╔══════════════════════════════════════════════════════════╗" | lolcat
echo -e  "  ║         ┃PENGGUNAAN BANDWITH SETIAP 5 MENIT┃             ║" |lolcat
echo -e   "  ╚══════════════════════════════════════════════════════════╝" | lolcat
echo -e ""

vnstat -5

echo -e ""
echo -e  "  ══════════════════════════════════════════════════════════" | lolcat
echo -e "$baris2" | lolcat
;;

3)
figlet VNSTAT | lolcat -d 5
echo -e  "  ╔══════════════════════════════════════════════════════════╗" | lolcat
echo -e  "  ║         ┃PENGGUNAAN BANDWITH SETIAP JAM┃                 ║" |lolcat
echo -e   "  ╚══════════════════════════════════════════════════════════╝" | lolcat
echo -e ""

vnstat -h

echo -e ""
echo -e  "  ══════════════════════════════════════════════════════════" | lolcat
echo -e "$baris2" | lolcat
;;

4)
figlet VNSTAT | lolcat -d 5
echo -e  "  ╔══════════════════════════════════════════════════════════╗" | lolcat
echo -e  "  ║        ┃PENGGUNAAN BANDWITH SETIAP HARI                  ║" |lolcat
echo -e   "  ╚══════════════════════════════════════════════════════════╝" | lolcat
echo -e ""

vnstat -d

echo -e ""
echo -e  "  ══════════════════════════════════════════════════════════" | lolcat
echo -e "$baris2" | lolcat
;;

5)
figlet VNSTAT | lolcat -d 5
echo -e  "  ╔══════════════════════════════════════════════════════════╗" | lolcat
echo -e  "  ║        ┃PENGGUNAAN BANDWITH SETIAP BULAN┃                ║" |lolcat
echo -e   "  ╚══════════════════════════════════════════════════════════╝" | lolcat
echo -e ""

vnstat -m

echo -e ""
echo -e  "  ══════════════════════════════════════════════════════════" | lolcat
echo -e "$baris2" | lolcat
;;

6)
figlet VNSTAT | lolcat -d 5
echo -e  "  ╔══════════════════════════════════════════════════════════╗" | lolcat
echo -e  "  ║        ┃PENGGUNAAN BANDWITH SETIAP TAHUN┃                ║" |lolcat
echo -e   "  ╚══════════════════════════════════════════════════════════╝" | lolcat
echo -e ""

vnstat -y

echo -e ""
echo -e  "  ══════════════════════════════════════════════════════════" | lolcat
echo -e "$baris2" | lolcat
;;

7)
figlet VNSTAT | lolcat -d 5
echo -e  "  ╔══════════════════════════════════════════════════════════╗" | lolcat
echo -e  "  ║        ┃PENGGUNAAN BANDWITH TERTINGGI┃                   ║" |lolcat
echo -e   "  ╚══════════════════════════════════════════════════════════╝" | lolcat
echo -e ""

vnstat -t

echo -e ""
echo -e  "  ══════════════════════════════════════════════════════════" | lolcat
echo -e "$baris2" | lolcat
;;

8)
figlet VNSTAT | lolcat -d 5
echo -e  "  ╔══════════════════════════════════════════════════════════╗" | lolcat
echo -e  "  ║     ┃GRAFIK BANDWITH TERPAKAI SETIAP JAM                 ║" |lolcat
echo -e   "  ╚══════════════════════════════════════════════════════════╝" | lolcat
echo -e ""

vnstat -hg

echo -e ""
echo -e  "  ══════════════════════════════════════════════════════════" | lolcat
echo -e "$baris2" | lolcat
;;

9)
figlet VNSTAT | lolcat -d 5
echo -e  "  ╔══════════════════════════════════════════════════════════╗" | lolcat
echo -e  "  ║        ┃LIVE PENGGUNAAN BANDWITH SAAT INI┃              ║" |lolcat
echo -e   "  ╚══════════════════════════════════════════════════════════╝" | lolcat
echo -e " ${white}CTRL+C Untuk Keluar!${off}"
echo -e ""

vnstat -l

echo -e ""
echo -e  "  ══════════════════════════════════════════════════════════" | lolcat
echo -e "$baris2" | lolcat
;;

10)
figlet VNSTAT | lolcat -d 5
echo -e  "  ╔══════════════════════════════════════════════════════════╗" | lolcat
echo -e  "  ║        ┃LIVE TRAFIK PENGGUNAAN BANDWITH┃                 ║" |lolcat
echo -e   "  ╚══════════════════════════════════════════════════════════╝" | lolcat
echo -e ""

vnstat -tr

echo -e ""
echo -e  "  ══════════════════════════════════════════════════════════" | lolcat
echo -e "$baris2" | lolcat
;;

x)
sleep 1
menu
;;

*)
sleep 1
echo -e "${mg}Nomor Yang Anda Masukkan Salah!${off}"
bw
;;
esac
