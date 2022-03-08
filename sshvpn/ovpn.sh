#!/bin/bash
#OpenVPN server installer for Debian 9
function rootako () {
	if [ "$EUID" -ne 0 ]; then
		return 1
	fi
}
function checktuntap () {
	if [ ! -e /dev/net/tun ]; then
		return 1
	fi
}

function checkdebian () {
	if [[ -e /etc/debian_version ]]; then
		OS="debian"
		source /etc/os-release

		if [[ "$ID" == "debian" || "$ID" == "raspbian" ]]; then
			if [[ ! $VERSION_ID =~ (9) ]]; then
				echo "⚠️ Your version of Debian is not supported."
				echo ""
				echo "However, if you're using Debian >= 9 or unstable/testing then you can continue."
				echo "Keep in mind they are not supported, though."
				echo ""
				until [[ $CONTINUE =~ (y|n) ]]; do
					read -rp "Continue? [y/n]: " -e CONTINUE
				done
				if [[ "$CONTINUE" = "n" ]]; then
					exit 1
				fi
else
		echo "Looks like you aren't running this installer on a Debian"
		exit 1
	fi
}
function initialCheck () {
	if ! rootbako; then
		echo "Sorry, you need to run this as root"
		exit 1
	fi
	if ! checktuntap; then
		echo "TUN is not available"
		exit 1
	fi
	checkdebian
}
function installQuestions () {
	echo "Welcome to the OpenVPN installer!"
	echo ""

	echo "I need to ask you a few questions before starting the setup."
	echo "You can leave the default options and just press enter if you are ok with them."
	echo ""
	echo "I need to know the IPv4 address of the network interface you want OpenVPN listening to."
	echo "Unless your server is behind NAT, it should be your public IPv4 address."

	# Detect public IPv4 address and pre-fill for the user
	IP=$(ip addr | grep 'inet' | grep -v inet6 | grep -vE '127\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | grep -oE '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | head -1)
	APPROVE_IP=${APPROVE_IP:-n}
	if [[ $APPROVE_IP =~ n ]]; then
		read -rp "IP address: " -e -i "$IP" IP
	fi
	# If $IP is a private IP address, the server must be behind NAT
	if echo "$IP" | grep -qE '^(10\.|172\.1[6789]\.|172\.2[0-9]\.|172\.3[01]\.|192\.168)'; then
		echo ""
		echo "It seems this server is behind NAT. What is its public IPv4 address or hostname?"
		echo "We need it for the clients to connect to the server."
		until [[ "$ENDPOINT" != "" ]]; do
			read -rp "Public IPv4 address or hostname: " -e ENDPOINT
		done
	fi
	echo ""
	echo "What port do you want OpenVPN to listen to?"
	echo "   1) Default: 1194"
	echo "   2) Custom"
	echo "   3) Random [49152-65535]"
	until [[ "$PORT_CHOICE" =~ ^[1-3]$ ]]; do
		read -rp "Port choice [1-3]: " -e -i 1 PORT_CHOICE
	done
	case $PORT_CHOICE in
		1)
			PORT="1194"
		;;
		2)
			until [[ "$PORT" =~ ^[0-9]+$ ]] && [ "$PORT" -ge 1 ] && [ "$PORT" -le 65535 ]; do
				read -rp "Custom port [1-65535]: " -e -i 1194 PORT
			done
		;;
		3)
			# Generate random number within private ports range
			PORT=$(shuf -i49152-65535 -n1)
			echo "Random Port: $PORT"
		;;
	esac
	echo ""
	echo "What protocol do you want OpenVPN to use?"
	echo "UDP is faster. Unless it is not available, you shouldn't use TCP."
	echo "   1) UDP"
	echo "   2) TCP"
	until [[ "$PROTOCOL_CHOICE" =~ ^[1-2]$ ]]; do
		read -rp "Protocol [1-2]: " -e -i 2 PROTOCOL_CHOICE
	done
	case $PROTOCOL_CHOICE in
		1)
			PROTOCOL="udp"
		;;
		2)
			PROTOCOL="tcp"
		;;
	esac
	echo ""
	echo "What Privoxy port do you want?"
	echo "   1) Default: 8118"
	echo "   2) Custom"
	echo "   3) Random [49152-65535]"
	until [[ "$PORT_PRIVO" =~ ^[1-3]$ ]]; do
		read -rp "Port choice [1-3]: " -e -i 1 $PORT_PRIVO
	done
	case $PORT_PRIVO in
		1)
			PORTS="8118"
		;;
		2)
			until [[ "$PORTS" =~ ^[0-9]+$ ]] && [ "$PORTS" -ge 1 ] && [ "$PORTS" -le 65535 ]; do
				read -rp "Custom port [1-65535]: " -e -i 8118 PORTS
			done
		;;
		3)
			# Generate random number within private ports range
			PORTS=$(shuf -i49152-65535 -n1)
			echo "Random Port: $PORTS"
		;;
	esac
	echo ""
	echo ""
	echo "Enter your dns or Press ENTER to use default:"
	echo ""
	until [[ "$DNS1" =~ ^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$ ]]; do
		read -rp "Primary DNS: " -e 8.8.8.8 DNS1
	done
	until [[ "$DNS2" =~ ^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$ ]]; do
		read -rp "Secondary DNS (optional): " -e 8.8.4.4 DNS2
		if [[ "$DNS2" == "" ]]; then
			break
		fi
	done
	echo ""
	echo "Okay, that was all I needed. We are ready to setup your OpenVPN server now."
	echo "You will be able to generate a client at the end of the installation."
	APPROVE_INSTALL=${APPROVE_INSTALL:-n}
	if [[ $APPROVE_INSTALL =~ n ]]; then
		read -n1 -r -p "Press any key to continue..."
	fi
}
function installOpenVPN () {
	if [[ $AUTO_INSTALL == "y" ]]; then
		# Set default choices so that no questions will be asked.
		APPROVE_INSTALL=${APPROVE_INSTALL:-y}
		APPROVE_IP=${APPROVE_IP:-y}
		PORT_CHOICE=${PORT_CHOICE:-1}
		PROTOCOL_CHOICE=${PROTOCOL_CHOICE:-1}
		DNS=${DNS:-1}
		CONTINUE=${CONTINUE:-y}
		PUBLIC_IPV4=$(curl ifconfig.co)
		ENDPOINT=${ENDPOINT:-$PUBLIC_IPV4}
	fi
	installQuestions
	NIC=$(ip -4 route ls | grep default | grep -Po '(?<=dev )(\S+)' | head -1)
	if [[ "$OS" =~ (debian) ]]; then
		apt-get update
		apt-get -y install ca-certificates gnupg
		apt-get install -y openvpn iptables openssl wget ca-certificates curl
	local version="3.0.4"
	wget -O ~/EasyRSA-unix-v${version}.tgz https://github.com/OpenVPN/easy-rsa/releases/download/v${version}/EasyRSA-unix-v${version}.tgz
	tar xzf ~/EasyRSA-unix-v${version}.tgz -C ~/
	mv ~/EasyRSA-v${version} /etc/openvpn/easy-rsa
	chown -R root:root /etc/openvpn/easy-rsa/
	rm -f ~/EasyRSA-unix-v${version}.tgz
	cd /etc/openvpn/easy-rsa/
	cp vars.example vars
	cat addtovars >> vars
	./easyrsa init-pki
	./easyrsa build-ca nopass
	cp pki/ca.crt /etc/openvpn/
	./easyrsa gen-req server nopass
	cp pki/private/server.key /etc/openvpn/
	cp pki/reqs/server.req /etc/openvpn/
	./easyrsa sign-req server server
	cp pki/issued/server.crt /etc/openvpn/
	./easyrsa gen-dh
	cp pki/dh.pem /etc/openvpn
	echo "port $PORT" > /etc/openvpn/server.conf
	echo "proto $PROTOCOL" >> /etc/openvpn/server.conf
	echo "dev tun
ca ca.crt
cert server.crt
key server.key
dh dh.pem
verify-client-cert none
username-as-common-name
plugin /usr/lib/openvpn/openvpn-plugin-auth-pam.so login
server 10.8.0.0 255.255.255.0
key-direction 0
ifconfig-pool-persist ipp.txt
push "redirect-gateway def1 bypass-dhcp"
push "dhcp-option DNS 8.8.8.8"
push "dhcp-option DNS 8.8.4.4"
push "route-method exe"
push "route-delay 2"
socket-flags TCP_NODELAY
push "socket-flags TCP_NODELAY"
keepalive 10 120
comp-lzo
user nobody
group nogroup
persist-key
persist-tun
status openvpn-status.log
log openvpn.log
verb 3
ncp-disable
cipher none
auth none" >> /etc/openvpn/server.conf
	echo 'net.ipv4.ip_forward=1' >> /etc/sysctl.d/20-openvpn.conf
	sysctl --system
	cp /lib/systemd/system/openvpn\@.service /etc/systemd/system/openvpn\@.service
	sed -i 's|LimitNPROC|#LimitNPROC|' /etc/systemd/system/openvpn\@.service
	sed -i 's|/etc/openvpn/server|/etc/openvpn|' /etc/systemd/system/openvpn\@.service
	systemctl daemon-reload
	systemctl restart openvpn@server
	systemctl enable openvpn@server
	mkdir /etc/iptables
	echo "#!/bin/sh
iptables -t nat -I POSTROUTING 1 -s 10.8.0.0/24 -o $NIC -j MASQUERADE
iptables -I INPUT 1 -i tun0 -j ACCEPT
iptables -I FORWARD 1 -i $NIC -o tun0 -j ACCEPT
iptables -I FORWARD 1 -i tun0 -o $NIC -j ACCEPT
iptables -I INPUT 1 -i $NIC -p $PROTOCOL --dport $PORT -j ACCEPT" > /etc/iptables/add-openvpn-rules.sh
	echo "#!/bin/sh
iptables -t nat -D POSTROUTING -s 10.8.0.0/24 -o $NIC -j MASQUERADE
iptables -D INPUT -i tun0 -j ACCEPT
iptables -D FORWARD -i $NIC -o tun0 -j ACCEPT
iptables -D FORWARD -i tun0 -o $NIC -j ACCEPT
iptables -D INPUT -i $NIC -p $PROTOCOL --dport $PORT -j ACCEPT" > /etc/iptables/rm-openvpn-rules.sh
	chmod +x /etc/iptables/add-openvpn-rules.sh
	chmod +x /etc/iptables/rm-openvpn-rules.sh
	echo "[Unit]
Description=iptables rules for OpenVPN
Before=network-online.target
Wants=network-online.target

[Service]
Type=oneshot
ExecStart=/etc/iptables/add-openvpn-rules.sh
ExecStop=/etc/iptables/rm-openvpn-rules.sh
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target" > /etc/systemd/system/iptables-openvpn.service
	systemctl daemon-reload
	systemctl enable iptables-openvpn
	systemctl start iptables-openvpn
	if [[ "$ENDPOINT" != "" ]]; then
		IP=$ENDPOINT
	fi
	echo "client" > /etc/openvpn/client.txt
	if [[ "$PROTOCOL" = 'udp' ]]; then
		echo "proto udp" >> /etc/openvpn/client-template.txt
	elif [[ "$PROTOCOL" = 'tcp' ]]; then
		echo "proto tcp-client" >> /etc/openvpn/client-template.txt
	fi
	echo "remote $IP $PORT
dev tun
proto tcp
auth-user-pass
persist-key
persist-tun
pull
resolv-retry infinite
nobind
user nobody
comp-lzo
remote-cert-tls server
verb 3
mute 2
connect-retry 5 5
connect-retry-max 8080
mute-replay-warnings
redirect-gateway def1
script-security 2
cipher none
auth none >> /etc/openvpn/client.txt
cp /etc/openvpn/client.txt /root/client.ovpn
	{
		echo "<ca>"
		cat "/etc/openvpn/ca.crt"
		echo "</ca>"
} >> client.ovpn
	echo "The configuration file is available at /root/client.ovpn"
	echo "Download the .ovpn file and import it in your OpenVPN client."
	
# Privoxy
apt-get update -y && apt-get upgrade -y && apt autoclean -y && apt autoremove
apt-get install privoxy
echo "user-manual /usr/share/doc/privoxy/user-manual" > /etc/privoxy/config
echo "confdir /etc/privoxy" >> /etc/privoxy/config
echo "logdir /var/log/privoxy" >> /etc/privoxy/config
echo "filterfile default.filter" >> /etc/privoxy/config
echo "logfile logfile" >> /etc/privoxy/config
echo "listen-address 0.0.0.0:$PORTS" >> /etc/privoxy/config
echo "toggle 1" >> /etc/privoxy/config
echo "enable-remote-toggle 0" >> /etc/privoxy/config
echo "enable-remote-http-toggle 0" >> /etc/privoxy/config
echo "enable-edit-actions 0" >> /etc/privoxy/config
echo "enforce-blocks 0" >> /etc/privoxy/config
echo "buffer-limit 4096" >> /etc/privoxy/config
echo "enable-proxy-authentication-forwarding 1" >> /etc/privoxy/config
echo "forwarded-connect-retries 1" >> /etc/privoxy/config
echo "accept-intercepted-requests 1" >> /etc/privoxy/config
echo "allow-cgi-request-crunching 1" >> /etc/privoxy/config
echo "split-large-forms 0" >> /etc/privoxy/config
echo "keep-alive-timeout 5" >> /etc/privoxy/config
echo "tolerate-pipelining 1" >> /etc/privoxy/config
echo "socket-timeout 300" >> /etc/privoxy/config
echo "permit-access 0.0.0.0/0 $IP" >> /etc/privoxy/config
service privoxy restart
service privoxy status
	exit 0
}
initialCheck


