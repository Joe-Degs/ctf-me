#!/usr/bin/bash 

wget "https://2019shell1.picoctf.com/static/6eba3b66e7a2b786c6c9769711d85663/run_this"
chmod +x run_this
./run_this | xclip 
xclip -o > flag.txt
cat flag.txt
