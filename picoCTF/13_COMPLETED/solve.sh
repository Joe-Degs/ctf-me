#!/usr/bin/bash

#copy the rot13 cipher text from the picoCTF website
echo xclip -o > cipher.txt; cat cipher.txt | rot13 | xclip; xclip -o > flag.txt

#copy the flag and submit
