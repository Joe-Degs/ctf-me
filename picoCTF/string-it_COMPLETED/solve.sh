#!/usr/bin/bash

wget "https://2019shell1.picoctf.com/static/762b9a36a6da791e3f61713fcfaf1721/strings"
cat strings | strings | grep pico --color=None | xclip; xclip -o > flag.txt
cat flag.txt
