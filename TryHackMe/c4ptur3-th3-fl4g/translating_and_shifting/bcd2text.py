#!/usr/bin/env python3

import sys

def toText(data):
    """
    convert bcd to ascii text
    """
    return ''.join([chr(int(x)) for x in data.split(' ')])

if __name__ == '__main__':
    print(toText(sys.argv[1]))

