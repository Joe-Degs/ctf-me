#!/usr/bin/env python3

with open('infile', 'rb') as f:
    byte = f.read(1)
    while byte != b'':
        print(byte)
        byte = f.read(1)

