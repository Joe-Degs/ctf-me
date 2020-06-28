# Vulnversity


### Task One - Deploy Machine

```
export IP=10.10.130.163
```

### Task Two - Reconnaissance

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

### Task 3 - Locating directories using `gobuster`

1. scan the server
```
Command: gobuster dir -u http://<ip>:<port> -w <word list location>
```

2. What is the directory that has an upload form page?
```
/internal/
```

### Compromise the webserver

Trying to fuzz the upload form of the webserver. but i'll do it with python because i dont know how burpsuite works just yet.
Special character: §
I got extension type that they like and thats `.phtml`. I am going to send a phtml reverse shell script to the server and execute it.


### Priveledege Escalation
okay the reverse shell is working as expected. but one more thing is exploiting the user priveleges to get a real shell this time around. I found a `/bin/systemctl` SUID on the system. But first i need a `.service` file which i am having a had time creating 













##### NOTES

Looks like i have to learn how to use burpsuite as it is necessary for this challenge

Also i feel like a simple python script can do this without installing a complete application. But its good I have to learn how to use a new pentesting app. But still I'll have to look around the interwebz for a python script to fuzz the input form.

This is the form upload page that was fucking me up last time. Okay so, last time i thought a python script could do this and i was right, you can use a simple python script to upload a simple file to a webpage. Saw John Hammond do it one of his videos. Man i love that guy.
