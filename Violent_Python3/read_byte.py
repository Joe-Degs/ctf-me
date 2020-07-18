#!/usr/bin/env python3

counter = 0
with open('VP110-1', 'rb') as f:
    while True:
        byte = f.read(1)
        if byte == b'\x08':
            print('hit!')
            counter += 1
        elif byte == b'':
            print(counter)
            exit(0)
