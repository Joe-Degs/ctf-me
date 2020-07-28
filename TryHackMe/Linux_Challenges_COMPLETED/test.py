#!/usr/bin/env python3

import string
import random
import sys

"""
just a script to write out some random text to file to test
bunch of regexes im having problem crafting.
"""

def random_string_gen(num_iter):
    for i in range(num_iter):
        fake_hash = ''.join([random.choice(string.printable[:9+7]) for _ in range(32)])
        if i == num_iter // 2:
            print('4bcebe6be79831b8e44acf979d3b1e04')
            continue
        print(fake_hash)


if __name__ == '__main__':
    random_string_gen(int(sys.argv[1]))
