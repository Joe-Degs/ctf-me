#!/usr/bin/env python3

import sys
import base64

def base32ToText(data):
    """
    Decode base32 encoded text
    """
    return base64.b32decode(data).decode('utf-8')

def base64ToText(data):
    """
    decode base64 encoded text
    """
    return base64.b64decode(data).decode('utf-8')

def base16ToText(data):
    return base64.a85decode(data).decode('ascii')


if __name__ == "__main__":
    enc_text = sys.argv[1].encode()
    dec_text = base64ToText(enc_text)
    print(dec_text)
