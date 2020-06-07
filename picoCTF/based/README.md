# Based.

> To get truly 1337, you must understand different data encodings, such as hexadecimal or binary. Can you get the flag from this program to prove you are on the way to becoming 1337? Connect with `nc 2019shell1.picoctf.com 20836`.

- This challenge was about bases that the computer generally uses. Like hex, bin, and oct. So i had to connect to this server using netcat that spat out random text encoded in either hex, bin or oct.

- I converted form bin to text with a python script, then i converted from oct to text from using a website i found through google searching. Finally converted from hex to text using `echo <hex> | xxd -p -f` from the terminal.

Pretty simple but i had to lookup some writeups on the interwebz :(
