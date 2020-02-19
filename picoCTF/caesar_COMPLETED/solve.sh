#!/usr/bin/bash

wget "https://2019shell1.picoctf.com/static/1f33970830e651254c964ee5d04f0e85/ciphertext"
str = $(cat ciphertext | cut -d "{" -f2 | cut -d "}" -f1)
for i in {1..26}; do
	echo str | caesar $1
done
