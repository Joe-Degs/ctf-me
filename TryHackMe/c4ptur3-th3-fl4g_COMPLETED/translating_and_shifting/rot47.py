#!/usr/bin/env python3

import sys

def rot47(s):
    """
    convert rot47 encoded text back to readable english
    """
    x = []
    for i in range(len(s)):
        j = ord(s[i])
        if j >= 33 and j <= 126:
            x.append(chr(33 +((j + 14)) % 94))
        else:
            x.append(s[i])
    return ''.join(x)


if __name__ == '__main__':
    print(rot47(sys.argv[1]))
