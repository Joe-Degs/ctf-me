# Broken Access Control

- I just read a bunch of stuff i was really not in the mood of reading.
But i think I'm understanding something here.	

- Access control is all about authorization and managing user access on web servers.
What file can users access based on their characteristics and what not.
It mostly closely related to file permissions on servers, like users have ids and what id you have determines which level of access you have to files on the server. Low priveledged users less access and the admin who is like root has the highest access.

- So broken access is finding vulnerability in the access control structure of the website and exploiting to expose sensitive data or take control of the server or cause aggravating damage to it! Which ever way suits the attacker. This type vulnerability can give a low priveledge user root access to files on the server.

- To put simply, broken access control allows attackers to bypass authorization which can allow them to view sensitive data or perform tasks as if they were a privileged user.

### IDOR challenge

- IDOR, or Insecure Direct Object Reference, is the act of exploiting a misconfiguration in the way user input is handled, to access resources you wouldn't ordinarily be able to access. IDOR is a type of access control vulnerability.

- 
