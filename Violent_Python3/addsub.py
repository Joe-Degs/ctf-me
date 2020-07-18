#!/usr/bin/env python3

import socket

def  func(comp, a, b):
    res = ''
    if comp == 'Subtract':
        res = int(a) - int(b)
    else:
        res = int(a) + int(b)

    return res

s = socket.socket()
s.connect(('ad.samsclass.info', 10104))

while True:
    data = s.recv(1024).decode()
    if 'flag' in data:
       print(data.split(' ')[-1])
       s.close()
       exit(0)

    arr = data.split(' ')
    send = func(arr[0], arr[-2], arr[-1])
    s.send(str(send).encode())
