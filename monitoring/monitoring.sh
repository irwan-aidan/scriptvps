#!/bin/bash
function monitoring () {
echo "I need to know the ip of the server you want to monitor..."
IP=$(ip addr | grep 'inet' | grep -v inet6 | grep -vE '127\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | grep -oE '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | head -1)
		read -rp "IP address: " -e -i "$IP" IP
apt-get install -y gcc libgeoip-dev python-virtualenv python-dev geoip-database-extra uwsgi uwsgi-plugin-python geoipupdate
cd /srv
git clone https://github.com/furlongm/openvpn-monitor.git
cd openvpn-monitor
virtualenv .
. bin/activate
pip install -r requirements.txt
cp openvpn-monitor.conf.example openvpn-monitor.conf
sed -i "s@host=localhost@host=$IP@g" openvpn-monitor.conf
sed -i 's@port=5555@port=7505@g' openvpn-monitor.conf
cd ~/monitoring/
cp openvpn-monitor.ini /etc/uwsgi/apps-available/
ln -s /etc/uwsgi/apps-available/openvpn-monitor.ini /etc/uwsgi/apps-enabled/
cp ~/monitoring/monitoring.conf /etc/nginx/conf.d/
cp /etc/nginx/module-available/* /etc/nginx/conf.d/
cp /etc/nginx/nginx/conf /etc/nginx/nginx.bak
cp ~/monitoring/nginx.conf /etc/nginx/
service uwsgi restart
service nginx restart
}
monitoring
