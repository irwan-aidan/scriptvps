#!/bin/bash
RED='\e[1;31m'
GREEN='\e[0;32m'
BLUE='\e[0;34m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com);
echo -e  "${RED}Checking VPS${NC}"
sleep 2
IZIN=$( curl https://raw.githubusercontent.com/ADITYAH2/halucok/main/ipvps | grep $MYIP )
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
echo -e "Contact WA https//wa.me/+6282339191527"
echo -e "For Registration IP VPS"
echo -e ""
echo -e "======================================="
echo -e ""
exit 0
fi

clear
echo "Start Update"
# update
cd /usr/bin
#install sslh
echo "=================  INSTALL MULTI PORT ======================" | lolcat
apt-get install sslh -y

# text gambar
apt-get install boxes

# color text
cd
rm -rf /root/.bashrc
wget -O /root/.bashrc "https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu-all/.bashrc"

# install lolcat
sudo apt-get -y install ruby
sudo gem install lolcat

# Encrypt
cd /usr/bin
wget -O /usr/bin/enc https://raw.githubusercontent.com/ADITYAH2/halucok/main/enc.sh && chmod +x /usr/bin/enc && cd /usr/bin && apt install -y dos2unix && dos2unix enc

#konfigurasi
wget -O /etc/default/sslh "https://raw.githubusercontent.com/ADITYAH2/halucok/main/sslh/sslh-conf"
service sslh restart

figlet Autobackup Nginx | lolcat -d 5
#konfigurasi
wget -O /usr/bin/autobackupnginx https://raw.githubusercontent.com/ADITYAH2/halucok/main/autobackupnginx.sh && chmod +x /usr/bin/autobackupnginx

figlet Backup Nginx | lolcat -d 5
#konfigurasi
wget -O /usr/bin/backupnginx https://raw.githubusercontent.com/ADITYAH2/halucok/main/backupnginx.sh && chmod +x /usr/bin/backupnginx

wget -O /usr/bin/host https://raw.githubusercontent.com/ADITYAH2/halucok/main/host.sh && chmod +x /usr/bin/host && cd /usr/bin && apt install -y dos2unix && dos2unix host
wget -O /usr/bin/trialws https://raw.githubusercontent.com/ADITYAH2/halucok/main/trialws.sh && chmod +x /usr/bin/trialws && cd /usr/bin && apt install -y dos2unix && dos2unix trialws

echo "=================  INSTALL BENGKEL VPS ======================" | lolcat
#konfigurasi
wget -O /usr/bin/pointing https://raw.githubusercontent.com/ADITYAH2/halucok/main/pointing.sh && chmod +x /usr/bin/pointing && cd /usr/bin && apt install -y dos2unix && dos2unix pointing
wget -O /usr/bin/editsm https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu-all/editsm && chmod +x /usr/bin/editsm
wget -O /usr/bin/bench-network https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu-all/bench-network && chmod +x /usr/bin/bench-network && cd /usr/bin && apt install -y dos2unix && dos2unix bench-network
wget -O /usr/bin/log-limit https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu-all/log-limit && chmod +x /usr/bin/log-limit
wget -O /usr/bin/updatescript https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu-all/updatescript && chmod +x /usr/bin/updatescript
wget -O /usr/bin/user-generate https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu-all/user-generate && chmod +x /usr/bin/user-generate
wget -O /usr/bin/user-delete-expired https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu-all/user-delete-expired && chmod +x /usr/bin/user-delete-expired
wget -O /usr/bin/user-list https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu-all/user-list && chmod +x /usr/bin/user-list
wget -O /usr/bin/user-lock https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu-all/user-lock && chmod +x /usr/bin/user-lock
wget -O /usr/bin/user-password https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu-all/user-password && chmod +x /usr/bin/user-password
wget -O /usr/bin/user-unlock https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu-all/user-unlock && chmod +x /usr/bin/user-unlock
wget -O /usr/bin/antitorrent https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu-all/antitorrent && chmod +x /usr/bin/antitorrent

#echo "=================  INSTALL TROJAN-GO ======================" | lolcat
#konfigurasi
#rm -rf go.sh && apt install curl && wget https://raw.githubusercontent.com/ADITYAH2/halucok/main/trgo/go.sh && apt update && apt install dos2unix && dos2unix go.sh && chmod +x go.sh && ./go.sh
#wget -O /usr/bin/cek-trgo https://halucok.me/trgo/cek-trgo && chmod +x /usr/bin/cek-trgo && cd /usr/bin && apt install -y dos2unix && dos2unix cek-trgo
#wget -O /usr/bin/del-trgo https://halucok.me/trgo/del-trgo && chmod +x /usr/bin/del-trgo && cd /usr/bin && apt install -y dos2unix && dos2unix del-trgo
#wget -O /usr/bin/renew-trgo https://halucok.me/trgo/renew-trgo && chmod +x /usr/bin/renew-trgo && cd /usr/bin && apt install -y dos2unix && dos2unix renew-trgo
#wget -O /usr/bin/xp-trgo https://halucok.me/trgo/xp-trgo && chmod +x /usr/bin/xp-trgo && cd /usr/bin && apt install -y dos2unix && dos2unix xp-trgo
#wget -O /usr/bin/trojangoo https://halucok.me/trgo/trojangoo && chmod +x /usr/bin/trojangoo && cd /usr/bin && apt install -y dos2unix && dos2unix trojangoo
#wget -O /usr/bin/port-trgo https://halucok.me/trgo/port-trgo && chmod +x /usr/bin/port-trgo && cd /usr/bin && apt install -y dos2unix && dos2unix port-trgo
#wget -O /usr/bin/add-trgo https://halucok.me/trgo/add-trgo.sh && chmod +x /usr/bin/add-trgo

echo "=================  INSTALL RUNNING SERVICE ======================" | lolcat
#konfigurasi
wget -O /usr/bin/geo https://raw.githubusercontent.com/ADITYAH2/halucok/main/geo.sh && chmod +x /usr/bin/geo && cd /usr/bin && apt install -y dos2unix && dos2unix geo
wget -O /usr/bin/bannerku1 https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu-all/bannerku1 && chmod +x /usr/bin/bannerku1
wget -O /usr/bin/format https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu-all/format && chmod +x /usr/bin/format && cd /usr/bin && apt install -y dos2unix && dos2unix format
wget -O /usr/bin/clear-log https://raw.githubusercontent.com/ADITYAH2/halucok/main/clear-log.sh && chmod +x /usr/bin/clear-log && cd /usr/bin && apt install -y dos2unix && dos2unix clear-log
#rm -rf install && apt install curl && wget https://raw.githubusercontent.com/ADITYAH2/halucok/main/sslh/install && apt update && apt install lolcat && apt install dos2unix && dos2unix install && chmod +x install && ./install

#echo "=================  INSTALL SSH WEBSOCKET TLS ======================" | lolcat
#konfigurasi
#rm -rf ws.sh && apt install curl && wget https://raw.githubusercontent.com/ADITYAH2/halucok/main/edu/ws.sh && apt update && apt install lolcat && apt install dos2unix && dos2unix ws.sh && chmod +x ws.sh && ./ws.sh
#rm -rf ohp-ovpn.sh && apt install curl && wget https://raw.githubusercontent.com/ADITYAH2/halucok/main/ohp/ohp-ovpn.sh && apt update && apt install lolcat && apt install dos2unix && dos2unix ohp-ovpn.sh && chmod +x ohp-ovpn.sh && ./ohp-ovpn.sh
#rm -rf ohp-db.sh && apt install curl && wget https://raw.githubusercontent.com/ADITYAH2/halucok/main/ohp/ohp-db.sh && apt update && apt install lolcat && apt install dos2unix && dos2unix ohp-db.sh && chmod +x ohp-db.sh && ./ohp-db.sh
#rm -rf ohp && apt install curl && wget https://raw.githubusercontent.com/ADITYAH2/halucok/main/ohp/ohp && apt update && apt install lolcat && apt install dos2unix && dos2unix ohp && chmod +x ohp && ./ohp
#rm -rf ohp.sh && apt install curl && wget https://raw.githubusercontent.com/ADITYAH2/halucok/main/ohp/ohp.sh && apt update && apt install lolcat && apt install dos2unix && dos2unix ohp.sh && chmod +x ohp.sh && ./ohp.sh

echo "=================  INSTALL SHADOWSOCKS SERVICE ======================" | lolcat
#konfigurasi
wget -O /etc/shadowsocks-libev/tls.json https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu-all/tls.json && chmod +x /etc/shadowsocks-libev/tls.json
wget -O /etc/shadowsocks-libev/http.json https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu-all/http.json && chmod +x /etc/shadowsocks-libev/http.json
systemctl restart shadowsocks-libev-server@tls
systemctl restart shadowsocks-libev-server@http

#wget -O /usr/bin/accounts https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu2/accounts && chmod +x /usr/bin/accounts
#wget -O /usr/bin/base_ports https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu2/base_ports && chmod +x /usr/bin/base_ports && cd /usr/bin && apt install -y dos2unix && dos2unix base_ports
#wget -O /usr/bin/base_ports_wc https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu2/base_ports_wc && chmod +x /usr/bin/base_port_wc && cd /usr/bin && apt install -y dos2
#wget -O /usr/bin/base-script https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu2/base-script && chmod +x /usr/bin/base-script
#wget -O /usr/bin/bench-network https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu2/bench-network && chmod +x /usr/bin/bench-network
#wget -O /usr/bin/clearcache https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu2/clearcache && chmod +x /usr/bin/clearcache
#wget -O /usr/bin/connections https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu2/connections && chmod +x /usr/bin/connections
#wget -O /usr/bin/create https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu2/create && chmod +x /usr/bin/create
#wget -O /usr/bin/create_random https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu2/create_random && chmod +x /usr/bin/create_random && cd /usr/bin && apt install -y dos2unix && dos2unix create_random
#wget -O /usr/bin/create_trial https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu2/create_trial && chmod +x /usr/bin/create_trial
#wget -O /usr/bin/delete_expired https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu2/delete_expired && chmod +x /usr/bin/delete_expired
#wget -O /usr/bin/diagnose https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu2/diagnose && chmod +x /usr/bin/diagnose
#wget -O /usr/bin/edit_openssh https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu2/edit_openssh && chmod +x /usr/bin/edit_openssh
#wget -O /usr/bin/edit_openvpn https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu2/edit_openvpn && chmod +x /usr/bin/edit_openvpn
#wget -O /usr/bin/edit_ports https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu2/edit_ports && chmod +x /usr/bin/edit_ports
#wget -O /usr/bin/edit_squid3 https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu2/edit_squid3 && chmod +x /usr/bin/edit_squid3
#wget -O /usr/bin/edit_stunnel4 https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu2/edit_stunnel4 && chmod +x /usr/bin/edit_stunnel4
#wget -O /usr/bin/locket_list https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu2/locket_list && chmod +x /usr/bin/locket_list
#wget -O /usr/bin/menuu https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu2/menuu && chmod +x /usr/bin/menuu
#wget -O /usr/bin/options https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu2/options && chmod +x /usr/bin/options
#wget -O /usr/bin/ram https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu2/ram && chmod +x /usr/bin/ram
#wget -O /usr/bin/reboot_sys https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu2/reboot_sys && chmod +x /usr/bin/reboot_sys
#wget -O /usr/bin/reboot_sys_auto https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu2/reboot_sys_auto && chmod +x /usr/bin/reboot_sys_auto
#wget -O /usr/bin/restart_services https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu2/restart_services && chmod +x /usr/bin/restart_services
#wget -O /usr/bin/server https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu2/server && chmod +x /usr/bin/server
#wget -O /usr/bin/set_multilogin_autokill https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu2/set_multilogin_autokill && chmod +x /usr/bin/set_multilogin_autokill
#wget -O /usr/bin/set_multilogin_autokill_lib https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu2/set_multilogin_autokill_lib && chmod +x /usr/bin/set_multilogin_autokill_lib
#wget -O /usr/bin/show_ports https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu2/show_ports && chmod +x /usr/bin/show_ports
#wget -O /usr/bin/user_delete https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu2/user_delete && chmod +x /usr/bin/user_delete
#wget -O /usr/bin/user_details https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu2/user_details && chmod +x /usr/bin/user_details
#wget -O /usr/bin/user_details_lib https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu2/user_details_lib && chmod +x /usr/bin/user_details_lib
#wget -O /usr/bin/user_extend https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu2/user_extend && chmod +x /usr/bin/user_extend
#wget -O /usr/bin/user_list https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu2/user_list && chmod +x /usr/bin/user_list
#wget -O /usr/bin/user_lock https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu2/user_lock && chmod +x /usr/bin/user_lock
#wget -O /usr/bin/user_unlock https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu2/user_unlock && chmod +x /usr/bin/user_unlock
#wget -O /usr/bin/settingVPS https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu2/settingVPS && chmod +x /usr/bin/settingVPS && cd /usr/bin && apt install -y dos2unix && dos2unix settingVPS
figlet DOMAIN | lolcat -d 5
#konfigurasi
wget -O /usr/bin/bw https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu-all/bw.sh && chmod +x /usr/bin/bw && cd /usr/bin && apt install -y dos2unix && dos2unix bw

figlet VNSTAT | lolcat -d 5
#konfigurasi
wget -O /usr/bin/panel-domain https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu-all/panel-domain.sh && chmod +x /usr/bin/panel-domain && cd /usr/bin && apt install -y dos2unix && dos2unix panel-domain

echo "=================  INSTALL BLOCK TORRENT ======================" | lolcat
#konfigurasi
rm -rf antiabuse.sh && apt install curl && wget https://raw.githubusercontent.com/ADITYAH2/halucok/main/menu-all/antiabuse.sh && apt update && apt install dos2unix && dos2unix antiabuse.sh && chmod +x antiabuse.sh && ./antiabuse.sh
rm -f antiabuse.sh

echo ""
echo -e ""
cat /usr/bin/bannerku1 | lolcat
echo ""
clear
sleep 1
echo -e "Mempersiapkan Update...." | lolcat
sleep 2
echo -e "\033[1;31m ~         (10%) \033[0m"
sleep 1
echo -e "\033[1;31m ~~        (20%) \033[0m"
sleep 1
echo -e "\033[1;32m ~~~       (30%) \033[0m"
sleep 1
echo -e "\033[1;32m ~~~~      (40%) \033[0m"
sleep 1
echo -e "\033[1;33m ~~~~~     (50%) \033[0m"
sleep 1
echo -e "\033[1;33m ~~~~~~    (60%) \033[0m"
sleep 1
echo -e "\033[1;34m ~~~~~~~   (70%) \033[0m"
sleep 1
echo -e "\033[1;34m ~~~~~~~~  (80%) \033[0m"
sleep 1
echo -e "\033[1;35m ~~~~~~~~~ (90%) \033[0m"
sleep 1
echo -e "\033[1;35m ~~~~~~~~~~(100%) \033[0m"
slep 1
clear
echo " SUCCESSFULLY UPDATE :" | lolcat
echo " - Fix Minor Bugs"
echo " ................." | lolcat
sleep 5
rm -f paket.sh
