#!/usr/bin/env python3

import sys
import base64
import requests
import textwrap
import urllib

def main(long_string):
    
    def fromBase64(b64):
        return base64.b64decode(b64.encode()).decode('utf-8')

    def fromMorseCode(morse):
        """
        fuck this api i'm going to make this work.
        """
        #url = 'http://api.funtranslations.com/translate/morse2english.json'
        #data = {'text': morse}
        #r = requests.post(url, data=urllib.parse.urlencode(data))
        #return r.text #r.json()['contents']['translated']
        #print(morse.split('\n'))
        morse_table = {'-----': '0', '.----': '1', '': ''}
        binary = []
        for word in morse.split('\n'):
            bits = ''.join([morse_table[x] for x in word.split(' ')])
            binary.append(bits)

        return ' '.join(binary)


    def fromBinary(binary):
        binary = binary.replace('\n', '').split(' ')
        binary.pop(-1)
        return ''.join([chr(int(x, 2)) for x in binary])

    def fromRot47(rot):
        return ''.join([chr(33 +((ord(rot[i]) + 14)) % 94) if ord(rot[i]) >= 33 and ord(rot[i]) <= 126 else rot[i] for i in range(len(rot))])

    def decimal(dec):
        return ''.join([chr(int(x)) for x in dec.split(' ')])

    return decimal(fromRot47(fromBinary(fromMorseCode(fromBase64(long_string)))))


if __name__ == '__main__':
    data = sys.stdin.read()
    result = main(data)
    print(result)

