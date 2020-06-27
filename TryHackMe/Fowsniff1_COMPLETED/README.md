# FowSniff 1
----------------

```
export IP=10.10.214.204
```

### Task 1 Hack into the FowSniff organisation.

1. Deploy the machine and perform a port scan
```
nmap -T5 -A -p- -sV -Pn -oN nmap/initial $IP

Also used metasploit too... faster but only enumrates pop3 servers on the ip
```
2. Do a little bit of OSINT work to find out more about the protocols and how they work.

3. Bruteforce some md5 hashes from pastebin.
Lots of resources on the interwebz to do this for me. No need to worry.

4. Convert some hexes to text with my legendary one liner
```
			MAIL DUMP FROM PASTEBIN
		
mauer@fowsniff:0e9588cb62f4b6f27e33d449e2ba0b3b:636172703465766572
mustikka@fowsniff:19f5af754c31f1e2651edde9250d69bb:736b796c65723232
tegel@fowsniff:1dc352435fecca338acfd4be10984009:6170706c65733031
baksteen@fowsniff:4d6e42f56e127803285a0a7649b5ab11:6f726c616e646f3132
seina@fowsniff:8a28a94a588a95b80163709ab4313aa4:6d61696c63616c6c
stone@fowsniff:90dc16d47114aa13671c697fd506cf26:73636f6f6279646f6f32
mursten@fowsniff:ae1644dac5b77c0cf51e0d26ad6d7e56:62696c626f313031
parede@fowsniff:f7fd98d380735e859f8b2ffbbede5a7e:3037303131393732

hash decrypt from https://hashes.com/en/decrypt
seina@fowsniff:90dc16d47114aa13671c697fd506cf26:73636f6f6279646f6f32:MD5PLAIN
seina@fowsniff:scoobydoo2

echo <HEX> | xxd -p -r
```

5. Now its time to connect to the server and look around, see what i can find :)
```
Return-Path: <stone@fowsniff>
X-Original-To: seina@fowsniff
Delivered-To: seina@fowsniff
Received: by fowsniff (Postfix, from userid 1000)
        id 0FA3916A; Tue, 13 Mar 2018 14:51:07 -0400 (EDT)
To: baksteen@fowsniff, mauer@fowsniff, mursten@fowsniff,
    mustikka@fowsniff, parede@fowsniff, sciana@fowsniff, seina@fowsniff,
    tegel@fowsniff
Subject: URGENT! Security EVENT!
Message-Id: <20180313185107.0FA3916A@fowsniff>
Date: Tue, 13 Mar 2018 14:51:07 -0400 (EDT)
From: stone@fowsniff (stone)

Dear All,

A few days ago, a malicious actor was able to gain entry to
our internal email systems. The attacker was able to exploit
incorrectly filtered escape characters within our SQL database
to access our login credentials. Both the SQL and authentication
system used legacy methods that had not been updated in some time.

We have been instructed to perform a complete internal system
overhaul. While the main systems are "in the shop," we have
moved to this isolated, temporary server that has minimal
functionality.

This server is capable of sending and receiving emails, but only
locally. That means you can only send emails to other users, not
to the world wide web. You can, however, access this system via 
the SSH protocol.

The temporary password for SSH is "S1ck3nBluff+secureshell"

You MUST change this password as soon as possible, and you will do so under my
guidance. I saw the leak the attacker posted online, and I must say that your
passwords were not very secure.

Come see me in my office at your earliest convenience and we'll set it up.

Thanks,
A.J Stone


SSHPASS = "S1ck3nBluff+secureshell"


RETR 2
+OK 1280 octets
Return-Path: <baksteen@fowsniff>
X-Original-To: seina@fowsniff
Delivered-To: seina@fowsniff
Received: by fowsniff (Postfix, from userid 1004)
        id 101CA1AC2; Tue, 13 Mar 2018 14:54:05 -0400 (EDT)
To: seina@fowsniff
Subject: You missed out!
Message-Id: <20180313185405.101CA1AC2@fowsniff>
Date: Tue, 13 Mar 2018 14:54:05 -0400 (EDT)
From: baksteen@fowsniff

Devin,

You should have seen the brass lay into AJ today!
We are going to be talking about this one for a looooong time hahaha.
Who knew the regional manager had been in the navy? She was swearing like a sailor!

I don't know what kind of pneumonia or something you brought back with
you from your camping trip, but I think I'm coming down with it myself.
How long have you been gone - a week?
Next time you're going to get sick and miss the managerial blowout of the century,
at least keep it to yourself!

I'm going to head home early and eat some chicken soup. 
I think I just got an email from Stone, too, but it's probably just some
"Let me explain the tone of my meeting with management" face-saving mail.
I'll read it when I get back.

Feel better,

Skyler

PS: Make sure you change your email password. 
AJ had been telling us to do that right before Captain Profanity showed up.
```

6. Trying to ssh into the machine after getting the password. Like a fucking psycopath i tried every user in turn until I hit the sweet spot :D . There are tools out there that do this typ'o shit.. I should start checking them out. :(
Now i just have to exploit the motherfucking machine :)

7. How the fuck am i going to 3sc the pr1v of this machine all by myself??
Theres a particular file run anytime you logon the machine. Add some python reverse shell and listen for it to hit the sweet spot and give you a shell back.
Python reverse shell did the trick
```
nc -lvp 1234

```


## THOUGHTS

Weew! this challenge is wearying me out :(... but its actually kind of fun :)
New exposure to pop3 and all this plenty mail protocols out there.. Also didnt here about _dovecot_ before.
From looking around its pretty easy to hijack the server and the insecure pop3 server running.
Also the md5 hash of the email passwords is not secure at all take note.
I'll pwn this machine tonight and have some rest... damn i think I deserve it :(.

Also being vigilante to develop my own unique techiques in pwning machines.(Extra important)

I can use netcat to connect to the server but what about a juicy python script? LOL!
I don't actually understand this problem that i have, i write pretty standard python scripts for my everyday activities but when it comes to scripting for cybersec stuf, I am completely lost :(. Feels like I don't even know python.

Here I am ranting instead of pwning this ungrateful and vulnerable piece of machinery :).

Woow its another day Jun 26, 2020, 08:52:29... Priv Esc is kicking my butt rediculously. I thought i had fair grasp of these and here i am trying to figure out how this shit works and i have absolutely no clue whatsoever.
I have some solid ideas that if it works i'll look like a genuis :). I still doubt it thoo but imma just try it out.

The answer to my questions were glaring at me the whole time. I had to go read a writeup online to find the files I was looking for.
I even went to look around that folder and didn't pay attention to the file... mern i'm stupid.


YOU'VE BEEN PWNED :D
