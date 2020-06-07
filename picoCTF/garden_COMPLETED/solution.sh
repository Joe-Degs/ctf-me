#!/usr/bin/bash

strings garden.jpg | grep -oE "picoCTF{.*?}" --color=None | xclip
xclip -o > flag.txt
