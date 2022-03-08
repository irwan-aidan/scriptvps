# Authod: Kgyya
# Gitcrod: github.com/Kgyya
"""
Join Us: t.me/tempatconfig - t.me/bebas_berinternet
"""

from bs4 import BeautifulSoup as bs
import requests
import sys
import re
import os; os.system("clear")
ses = requests.Session()
def create():
	readyssh = "https://www.readyssh.net/server/openvpn"
	head = {"User-Agent":"Chrome"}
	r = ses.get(readyssh,headers=head)
	soup = bs(r.text,"html.parser")
	count = 1
	jud = []
	for list_jud in soup.find_all("h3",class_="pb-2 mb-3"):
		print(str(count)+") "+list_jud.text.replace("OPENVPN ",""))
		count += 1
		jud.append(list_jud.text.replace("OPENVPN ","").lower())
	pilih = input("Select Server: ")
	pil = jud[int(pilih) - 1]
	print("Proccessing...")
	list_link_jud = "https://www.readyssh.net/server/openvpn/"+str(pil)
	raw = ses.get(list_link_jud)
	soupp = bs(raw.text,"html.parser")
	os.system("clear")
	print("Server : "+str(pil))
	cound = 1
	isp = []
	for list_isp in re.findall("<h4>(.*?)</h4>",raw.text):
		print(str(cound)+") "+str(list_isp))
		cound += 1
		isp.append(list_isp.replace(" ","-").lower())
	pilih_isp = input("Select Server ISP: ")
	pil_isp = isp[int(pilih_isp) - 1]
	link_isp = list_link_jud+"/buat-akun/"+pil_isp
	print("[INFO] USERNAME TIDAK BOLEH BERISI ANGKA")
	user = input("Input Username: ")
	pw = input("Input Password: ")
	raw_isp = ses.get(link_isp)
	soupe = bs(raw_isp.text,"html.parser")
	create = soupe.find("form",attrs={"id":"create-account"})
	token = soupe.find("input",attrs={"name":"_token"})
	data = {
		"_token":token.get("value"),
		"username":user,
		"password":pw
		}
	create_ovpn = ses.post(create.get("action"),headers=head,data=data)
	if "Berhasil!" in create_ovpn.text:
		print("Host/IP : "+re.search("<li>Host: (.*?)<",create_ovpn.text).group(1))
		print("Username: "+re.search("<li>Username: (.*?)<",create_ovpn.text).group(1))
		print("Password: "+re.search("<li>Password: (.*?)<",create_ovpn.text).group(1))
		print("Link OpenVPN Config: "+re.search('OpenVPN Config: <a href="(.*?)">',create_ovpn.text).group(1))
		print("Port OpenVPN Information: ")
		print("OpenVPN TCP: 1194")
		print("OpenVPN UDP: 25000")
		print("OpenVPN SSL: 992")
		print("Squid Proxy: 3128, 8080, 8118")
		print("Squid SSL  : 8000")
		print("Expired : "+re.search("<li>Aktif Sampai: (.*?)<",create_ovpn.text).group(1))
		print("\nJOIN US: https://t.me/tempatconfig - t.me/bebas_berinternet")
	elif "Sorry" in create_ovpn.text:
		print("Limit Exceed!, Server Full.")
	elif "Warning!" in create_ovpn.text:
		print("Silahkan Cek Kembali Data Yang Anda Inputkan!")
	else:
		exit("Something Wrong, Sorry:(")

if __name__ == "__main__":
	create()
