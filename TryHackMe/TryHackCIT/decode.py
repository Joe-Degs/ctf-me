#!/usr/bin/env python3

import base64


with open('b64.txt', 'rb') as fh:
    enc_text = fh.read()
    print(type(enc_text))
    for i in range(50):
        enc_text = base64.b64decode(enc_text)
        if i == 49:
            print(enc_text)
