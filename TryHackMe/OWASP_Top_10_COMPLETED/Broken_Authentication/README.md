# Broken Authentication

- What is Broken Authentication?
Because HTTP and HTTPS are stateless, authentication using username/email and password and session management using cookies or jwt tokens are used in most web applications.
if appropriate measures are not taken to secure these methods used to identify clients, hackers could get hold of this accounts and pose as users causing threats in your systems.
If an attacker finds flaws in your system, he could use that to gain access to other user accounts and hell even get root access on your system. So developers have to go the extra mile to keep their systems secure and free from the wrath of attackers.

	- they should avoid things like weak and predictable session cookies
	- dissallow users from registering with weak credentials
	- implement multi factor authentication.

```
export IP=10.10.204.22
```
- First type of attack is the user re-registration. Some web applications use unsanitized inputs from users in their applications to authenticate users, attackers can input any form of payload into this fields to try to find vulnerabilities in the system.
Example is using the same username twice. This will give you the account of the previous registered user. Very bad way of authentication in web apps. Never do this!.

- I got in as a user darren and got the first flag. The trick here is to use the username with a space before it like  " athur". this will render is as the user and 
```
fe86079416a21a3c99937fea8874b667
```

- I tried again as arthur and got logged in as him.
```
d9ac0f7db4fda460ac3edeb75d75e16e
```

And thats it, i got in as other users because of unsanitized input. 
Things i need to do is read up on other ways of using the broken authentication attackss
