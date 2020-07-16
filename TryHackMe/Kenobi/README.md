# Kenobi

```
export IP=10.10.42.124
```
- Performing the legendary nmap scan to know the services running on the machine.

```
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
```
nmap -p 445,139 --script=smb-enum-shares.nse,smb-enum-users.nse 10.10.42.124
```
Lemme look through quickly see what i can find. I actually dont understand much over there. 	

- Theres an rpcbind service running on the server. Just got to read about this one, i honestly dont know much about it. Ive seen it occassionally though.
```
nmap -p 111 --script=nfs-ls,nfs-statfs,nfs-showmount -oN scans/rpcbind $IP
```
Okay from what i am reading on the internet, the rpcbind(a 'bind') is just like a dns server. It registers rpc processes running on the system(ex nfs) and the port numbers they are listening on and then maps them to a unique number. So if a client  system contacts the rpcbind(runs on port 111) with the number of the rpc process(basically a server serving something) called the servers rpc number, the rpcbind will redirect you to that server running on the host machine so you can communicate with it.


### Gain initial Access with ProFtpd

