# Nmap 

```
export IP=10.10.158.196
```

- I took to learning nmap officially after using for close to a month now. Big decision for me because i want to get familiar with the nitigrities of nmap.

- Discovering new terminologies like the syn scan and other different types of scan. This time i'll probably not forget the commands again. The syn scan is performed as a stealth scan and can only be performed by the root user. A tcp connection is made to the scanned machine and the first tcp headers `syn` is sent to initiate the three way handshake, the scanned machine responds with the acknowledgement `syn/ack` nmap then sends `rst` header to close the connection, instead of sending an `ack` to acknowledge the completion of the handshake.

- Almost done with the room. Learnt some cool nmap scripts that will help me crack more boxes faster LOL!.

- My final scan. This scans are pretty fast.
```
joedev@joedev-pc:~/CTF{me}/TryHackMe/Nmap$ sudo nmap -A $IP
[sudo] password for joedev:
Starting Nmap 7.70 ( https://nmap.org ) at 2020-07-13 05:56 GMT
Stats: 0:01:41 elapsed; 0 hosts completed (1 up), 1 undergoing SYN Stealth Scan
SYN Stealth Scan Timing: About 99.99% done; ETC: 05:58 (0:00:00 remaining)
Stats: 0:01:43 elapsed; 0 hosts completed (1 up), 1 undergoing SYN Stealth Scan
SYN Stealth Scan Timing: About 99.99% done; ETC: 05:58 (0:00:00 remaining)
Stats: 0:01:52 elapsed; 0 hosts completed (1 up), 1 undergoing SYN Stealth Scan
SYN Stealth Scan Timing: About 99.99% done; ETC: 05:58 (0:00:00 remaining)
Nmap scan report for 10.10.95.73
Host is up (0.22s latency).
Not shown: 998 closed ports
PORT   STATE SERVICE VERSION
22/tcp open  ssh     OpenSSH 6.6.1p1 Ubuntu 2ubuntu2.10 (Ubuntu Linux; protocol 2.0)
| ssh-hostkey:
|   1024 e0:27:f0:6f:79:0d:df:a5:68:f0:e6:eb:cf:b8:a4:76 (DSA)
|   2048 d3:0d:06:85:98:67:73:e4:8c:f4:db:29:ac:82:6f:41 (RSA)
|   256 12:2e:d7:44:e4:78:15:41:2d:fa:71:c8:01:d6:b0:31 (ECDSA)
|_  256 e3:4a:ed:9f:7a:47:ff:79:dc:06:75:58:35:d1:d7:1e (ED25519)
80/tcp open  http    Apache httpd 2.4.7 ((Ubuntu))
| http-cookie-flags:
|   /:
|     PHPSESSID:
|_      httponly flag not set
| http-robots.txt: 1 disallowed entry
|_/
|_http-server-header: Apache/2.4.7 (Ubuntu)
| http-title: Login :: Damn Vulnerable Web Application (DVWA) v1.10 *Develop...
|_Requested resource was login.php
No exact OS matches for host (If you know what OS is running on it, see https://nmap.org/submit/ ).
TCP/IP fingerprint:
OS:SCAN(V=7.70%E=4%D=7/13%OT=22%CT=1%CU=43448%PV=Y%DS=2%DC=T%G=Y%TM=5F0BF82
OS:C%P=x86_64-pc-linux-gnu)SEQ(SP=107%GCD=1%ISR=10A%TI=Z%CI=I%II=I%TS=8)SEQ
OS:(SP=107%GCD=1%ISR=10A%TI=Z%TS=8)SEQ(SP=107%GCD=1%ISR=10A%TI=Z%CI=I%TS=8)
OS:OPS(O1=M508ST11NW6%O2=M508ST11NW6%O3=M508NNT11NW6%O4=M508ST11NW6%O5=M508
OS:ST11NW6%O6=M508ST11)WIN(W1=68DF%W2=68DF%W3=68DF%W4=68DF%W5=68DF%W6=68DF)
OS:ECN(R=Y%DF=Y%T=40%W=6903%O=M508NNSNW6%CC=Y%Q=)T1(R=Y%DF=Y%T=40%S=O%A=S+%
OS:F=AS%RD=0%Q=)T2(R=N)T3(R=N)T4(R=Y%DF=Y%T=40%W=0%S=A%A=Z%F=R%O=%RD=0%Q=)T
OS:5(R=Y%DF=Y%T=40%W=0%S=Z%A=S+%F=AR%O=%RD=0%Q=)T6(R=Y%DF=Y%T=40%W=0%S=A%A=
OS:Z%F=R%O=%RD=0%Q=)T7(R=Y%DF=Y%T=40%W=0%S=Z%A=S+%F=AR%O=%RD=0%Q=)U1(R=Y%DF
OS:=N%T=40%IPL=164%UN=0%RIPL=G%RID=G%RIPCK=G%RUCK=G%RUD=G)IE(R=Y%DFI=N%T=40
OS:%CD=S)

Network Distance: 2 hops
Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel

TRACEROUTE (using port 443/tcp)
HOP RTT       ADDRESS
1   282.46 ms 10.8.0.1
2   284.00 ms 10.10.95.73

OS and Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 166.12 seconds

```
