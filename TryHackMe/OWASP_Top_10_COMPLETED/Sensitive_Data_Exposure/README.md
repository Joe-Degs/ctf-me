# Sensitive Data Exposure

- Exposing sensitive data, pretty self explanatory i must say.
Dont leave data lying around, dont be careless. Always keep data safe, be extra careful with the assigning of roles and root on your server.

```
export IP=10.10.149.105
```

- Performing an nmap scan now.

```
Nmap scan report for 10.10.149.105
Host is up (0.33s latency).
Not shown: 999 closed ports
PORT   STATE SERVICE VERSION
80/tcp open  http    Apache httpd 2.4.29 ((Ubuntu))

Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 50.44 seconds

```

- Gobuster coming up....
```
opt/wordlist/common.txt                                                                               
                                                                                                      
=====================================================                                                 
Gobuster v2.0.1              OJ Reeves (@TheColonial)                                                 
=====================================================                                                 
[+] Mode         : dir                                                                                
[+] Url/Domain   : http://10.10.149.105/                                                              
[+] Threads      : 10                                                                                 
[+] Wordlist     : /opt/wordlist/common.txt                                                           
[+] Status codes : 200,204,301,302,307,403                                                            
[+] Timeout      : 10s                                                                                
=====================================================                                                 
2020/07/16 10:15:59 Starting gobuster                                                                 
=====================================================                                                 
/.hta (Status: 403)                                                                                   
/.htpasswd (Status: 403)                                                                              
/.htaccess (Status: 403)                                                                              
/api (Status: 301)                                                                                    
/assets (Status: 301)                                                                                 
```

- Let me go do some active looking around see what i can find.
I got the database of the server. A sqlite3 database it is. I'll try to look inside and see whats init.
So I'm about to do something crazy in the name of keeping notes LOL!
I am copying the my whole sqlite session into the notes LOL! I am having fun ahahhahh.

```
joedev@joedev-pc:~/CTF{me}/TryHackMe/OWASP_Top_10/Sensitive_Data_Exposure$ sqlite3 webapp.db
SQLite version 3.27.2 2019-02-25 16:06:06
Enter ".help" for usage hints.
sqlite> .tables
sessions  users
sqlite> .show
        echo: off
         eqp: off
     explain: auto
     headers: off
        mode: list
   nullvalue: ""
      output: stdout
colseparator: "|"
rowseparator: "\n"
       stats: off
       width:
    filename: webapp.db
sqlite> select * from sessions
   ...> ;
sqlite>
sqlite>
sqlite> .show
        echo: off
         eqp: off
     explain: auto
     headers: off
        mode: list
   nullvalue: ""
      output: stdout
colseparator: "|"
rowseparator: "\n"
       stats: off
       width:
    filename: webapp.db
sqlite> .dump
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE sessions(
sessionID TEXT NOT NULL UNIQUE,
userID TEXT NOT NULL,
expiry INT NOT NULL,
PRIMARY KEY (sessionID));
CREATE TABLE users(
userID TEXT NOT NULL UNIQUE,
username TEXT NOT NULL UNIQUE,
password TEXT NOT NULL,
admin INT NOT NULL,
PRIMARY KEY(userID));
INSERT INTO users VALUES('4413096d9c933359b898b6202288a650','admin','6eea9b7ef19179a06954edd0f6c05ceb',1);
INSERT INTO users VALUES('23023b67a32488588db1e28579ced7ec','Bob','ad0234829205b9033196ba818f7a872b',1);
INSERT INTO users VALUES('4e8423b514eef575394ff78caed3254d','Alice','268b38ca7b84f44fa0a6cdc86e6301e0',0);
COMMIT;
sqlite> .explain on
sqlite> .show
        echo: off
         eqp: off
     explain: on
     headers: off
        mode: explain
   nullvalue: ""
      output: stdout
colseparator: "|"
rowseparator: "\n"
       stats: off
       width:
    filename: webapp.db
sqlite> .dump
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE sessions(
sessionID TEXT NOT NULL UNIQUE,
userID TEXT NOT NULL,
expiry INT NOT NULL,
PRIMARY KEY (sessionID));
CREATE TABLE users(
userID TEXT NOT NULL UNIQUE,
username TEXT NOT NULL UNIQUE,
password TEXT NOT NULL,
admin INT NOT NULL,
PRIMARY KEY(userID));
INSERT INTO users VALUES('4413096d9c933359b898b6202288a650','admin','6eea9b7ef19179a06954edd0f6c05ceb',1);
INSERT INTO users VALUES('23023b67a32488588db1e28579ced7ec','Bob','ad0234829205b9033196ba818f7a872b',1);
INSERT INTO users VALUES('4e8423b514eef575394ff78caed3254d','Alice','268b38ca7b84f44fa0a6cdc86e6301e0',0);
COMMIT;
sqlite> .show users
Usage: .show
sqlite> .tables
sessions  users
sqlite> select * from users;
user  username       pass  admi
----  -------------  ----  ----
4413096d9c933359b898b6202288a650  admin          6eea9b7ef19179a06954edd0f6c05ceb  1
23023b67a32488588db1e28579ced7ec  Bob            ad0234829205b9033196ba818f7a872b  1
4e8423b514eef575394ff78caed3254d  Alice          268b38ca7b84f44fa0a6cdc86e6301e0  0
sqlite> select * from users;
user  username       pass  admi
----  -------------  ----  ----
4413096d9c933359b898b6202288a650  admin          6eea9b7ef19179a06954edd0f6c05ceb  1
23023b67a32488588db1e28579ced7ec  Bob            ad0234829205b9033196ba818f7a872b  1
4e8423b514eef575394ff78caed3254d  Alice          268b38ca7b84f44fa0a6cdc86e6301e0  0
sqlite> 

====================================================================

LOL! I found the passwords of the two users who it seems are all admins of some sort on the webapp.

6eea9b7ef19179a06954edd0f6c05ceb	-	md5	-	qwertyuiop
ad0234829205b9033196ba818f7a872b 	- 	md5 	- 	test2

time to go login and see whats in it.
```

- I am done with todays challenge :).
But theres a hint about there being being a one month subscription to the tryhackme platform and its late somebody experienced has already found it but lemme also try to find it again. :).

- I am getting a vibe here. So theres a clue about a subcode on the home page.
```
HINT!
			<!-- PS: If you know what a "subcode" is, and that's why you're here, kudos for the ingenuity! That deserves a hint: it's back on the home page. -->
			
mailto:beta@senseandsensitivity.xyz

```

- So im thinking the admin created a mailto server for sending emails and i just have to find it. Honestly i dont even know what im saying.
