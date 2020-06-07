# OhSINT (Open Source Intelligence => OSINT)


## Research

1. what is open source intelligence?

Basically refers to all the free info on the interwebs for our use.
OSINT is present in our everyday lifes, we search for info on google search, we watch tutorial videos on youtube and all other stuff. That's all about OSINT my gee!

There are loads of resources, tools and techniques when using OSINT for cybersec stuff.
First steps to hacking with OSINT is asking yourself.

	- What am I looking for?
	- What is my main research goal?
	- What and who is the target?
	- How am I going to conduct the research?
	
The best type of advice when doing OSINT stuff is to be on the lookout any type of info you can find. Be extra vigilant and probe deeper even into the stupid stuff that don't look promising. **YOU** might never know what's glaring at your face and is the answer you need.

To read more, visit this **[BLOG](https://securitytrails.com/blog/what-is-osint-how-can-i-make-use-of-it)**.


## CTF mode :
This particular challenge had a picture for me to explore. I ran exiftool on the image to get its metadata which i'm going to explore for the answers to the questions.

1. What is this users avatar of?
```
Cat
```

- Theres a bssid on the twitter page of the copyright owner of the photo
- Name is Oliver Woodflint
- Bssid: ``B4:5D:50:AA:86:41`` (found on his twitter page)
- Also there's a wordpress website owned by the owner of the copyright.
- I used [wigle](https://www.wigle.net/) to lookup the SSID of the BSSID the user is connected to.

2. What city is this person in?
```

Answer: London
```
