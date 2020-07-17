#! /usr/bin/env python3

import sys
import binascii

def bin2ascii(bin_arr):
    """
    convert an array of binary strings to ascii text
    """
    return ''.join([chr(int(x, 2)) for x in bin_arr])

def hex2ascii(data):
    """
    convert hex data to unicode text
    """
    return ''.join([binascii.unhexlify(x).decode('utf-8') for x in data])

if __name__ == '__main__':
    bin_str = sys.argv[1]
    bin_arr = bin_str.split(' ')
    print(hex2ascii(bin_arr))
