# Vulnversity


## Task One - Deploy Machine

```
export IP=10.10.15.230
```

## Task Two - Reconnaissance

1. Nmap cheatsheets 
```
done
```

2. How many ports are opened.
```
6
Command nmap -sV $IP
```

3.what version of the squid proxy is running on the machine 
```
Squid http proxy 3.5.12
Technique: Just look through the nmap scan data, you'll catch something :(
```

4. How many ports will nmap scan if the flag -p-400 was used?
```
Command: nmap -sV -p-400 $IP
Answer: 400
Technique: the 400 infront of the -p is the answer lmao!
```

5. Using the nmap flag -n what will it not resolve?
```
dns
```

6. What is the most likely operating system this machine is running?
```
ubuntu
```

7. What port is the web server running on?
```
3333
```

8. Perform a full port scan 
```
Command: nmap -sC -sV -oA vulnversity_full -p- $IP &
This particular scan is taking too long to complete so i'm trying another one

Command: nmap -sC -sV -oN nmap/initial $IP
```
