# [Task 1] Simple CTF

```
export IP=10.10.168.135
```

- First things first, let get some nmap scan done.
The nmap scan is finished. And it had ssh, ftp and http on the server.

- I can login to ftp as anonymous which i did. There's a folder with with a text file in it. I totally got that. It was a hint that the password to the ssh server is insecure.

- I'm gonna try to crack the password with hydra now. Also according to the hint, the user on the ssh server is `mitch`.
```
hydra -l mitch -p /rockyou.txt ssh://$IP:2222


[DATA] attacking ssh://10.10.166.145:2222/
[2222][ssh] host: 10.10.166.145   login: mitch   password: secret

``` 


- Logged in through ssh and got the user.txt flag.
Looking around,(`sudo -l`) i found that the user mitch can run `sudo vim` without password. I'll take a look at gtfo bins and find an exploit for it.

-  Got root on the machine the ssh way. But looks like theres a way to get root using web application on the server. I'll try that out next.

- Getting some gobuster scan inn on the webbsite. Not bringing anything positive for now but i'll wait. It is done and the results look amazing!

- I have to download searchsploit first to complete this officially so.. Im just gonna wait till i download it.
