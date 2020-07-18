#!/usr/bin/env python3

with open('VP110-2a', 'rb') as f1:
    with open('VP110-2b', 'rb') as f2:
        ad = b''
        while True:
            b1 = f1.read()
            b2 = f2.read()
            ad += b1 + b2
            if b1 == b'' and b2 == b'':
                print(ad)
                exit(0)
