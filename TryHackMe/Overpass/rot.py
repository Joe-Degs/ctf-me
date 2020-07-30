#!/usr/bin/env python3

import sys

def fromRot47(rot):
    return ''.join([chr(33 +((ord(rot[i]) + 14)) % 94) if ord(rot[i]) >= 33 and ord(rot[i]) <= 126 else rot[i] for i in range(len(rot))])

if __name__ == '__main__':
    print(fromRot47(sys.argv[1]))
