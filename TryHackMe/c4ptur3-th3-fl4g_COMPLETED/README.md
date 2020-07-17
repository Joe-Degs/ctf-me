# Capture The Flag.

- This room contains bunch of obfuscated, encoded, hashed and encrypted text. I am going to crack every single one this MFs!.

- I'll have to use some python scripting to do this because i am in the mood for some coding :).

### Challenge One - Translating and Shifting.

1. The first challenge was actually just easy. They this type 31337 hackers lang to encode the translate the text. i just had to translate back.

2. This challenge had a binary string with spaces, I just had to
```python
''.join([chr(int(bin_str, 2)) for x in bin_data.split(' ')])

# very easy too LOL!.
```

3. This one looks like some base32 encoded text to me. Lemme try some python magic and seeeee. I cracked this one pretty simple. I just knew it was base32

4. Fuck this challenge! I tried to `base64 -d` this pariticurlar string yesterday but it was giving an error. I tried it this morning and it worked like a charm. I was pissed.

5. I just knew this was hexadecimal. I wrote a python script that does it simple `./bin2ascii.py <hex_string>`. You'll have to play with the script for it to work well thoo.
Also xxd does it simple just with `xxd -p -r`

6. Rot13 is pretty simple!

7. This one got me running around the interwebz like a little hobo LOL!. After sometime i got to know about ROT47 and it is rot47. Thing is it'll be hard for me to know a rot47 encoded if i see one.

8. The almighty morse code. I looked for an online decoded to do this one simple. Didn't want to stress myself too much ahahahaha..

9. Uhmm bcd. Back at high school we were taught EBCDIC. A lil python script did this magic fi mi. I didn't have to stress myself like we did in high school :).

10. This is the beast itself. Man i have been trying to finish this with my python special but naa it is fucking me up. I have spent more than 3 hours on this one alone. It is a combo of almost all the encoding formats i've dealt with in the past challenges.
It is base64 text that decodes to morse code then binary then rot47 then finally decimal that gives the real text.
I'm still cracking my skull to finish this script. So i am working to get this script working like a fucking recipe.
I just had a serious and genius idea... i fucken spent the whole day looking for a way to make the script work, now i got it. I know the morse code decodes to a string of binary data. That means there are only two possible values 0 and 1. I'll create a dict of this two values with and then split and loop through the string to get my correct binary data. It worked.
So the i just copied the base64 encoded text into a file and named it bogus.txt and run the script like so  `cat bogus.txt | ./bogus.py` and got the key!. Tough one thooo. Took me close to a day to actually figure out.

### Hashing

- This one was tricky but an cracking a hash on the internet is pretty easy this day soo. I was done without even realising it. But theres one that is fucking me up. The letters in the hash are all uppercase, I'm suspecting its md4 hash. I couldn't find any decrypter online. Luckily i a python script i pulled of github do the searchin online and find the crack. :)

### Spectrograms

- I downloaded i `.wav` file. The hints said i could use something like audacity so thats what i'm gonna do. I had another idea to try to look for a cmdline tool that could be used to analyze spectrograms. I did it, found this app `sox` so i just did a `sox secretaudio.wav -n spectrogram` and i got it.

### Stenography

- I ve been doing stenography for a long time. I dont think this will be a problem. I already have tools on my pc to crack this simple. I ended up using an online stegano decoder. Steghide required a pasword to work. And zsteg and exiftool didnt find it. but better still i did it and i learned. :(.

### Security Through Obscurity

- I download a meme.jpg file from the challenge room. Lemme open and see whats in it. Strings saved the day people.
Wow I did it. Completed the challenge. Fucken three full days to do this.

I made it. LOL!.
