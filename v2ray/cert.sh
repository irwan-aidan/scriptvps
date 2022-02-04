#!/bin/bash

source /var/lib/vpn/ipvps.conf
if [[ "$IP" = "" ]]; then
	domain=$(cat /etc/v2ray/domain)
else
	domain=$IP
fi
domain=$IP
systemctl stop v2ray
systemctl stop v2ray@none
/root/.acme.sh/acme.sh --issue -d $domain --standalone -k ec-256
~/.acme.sh/acme.sh --installcert -d $domain --fullchainpath /etc/v2ray/v2ray.crt --keypath /etc/v2ray/v2ray.key --ecc
systemctl start v2ray
systemctl start v2ray@none
echo Done
