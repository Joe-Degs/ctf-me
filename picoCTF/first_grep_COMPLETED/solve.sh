#!/usr/bin/bash

#copy the link to the file and paste the link in the wget
wget "https://2019shell1.picoctf.com/static/5f3d01c1753f29c50640a903bd6ec5e6/file"
cat file | grep pico --color=None | xclip; xclip -o > flag.txt; cat flag.txt

#copy flag and submit
