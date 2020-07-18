#!/usr/bin/env python3

import socket

s = socket.socket()
s.connect(('ad.samsclass.info', 10123))
data = s.recv(1024).decode()
print(data)
send = int(data.split(' ')[-1])
s.send(str(send).encode())
print(s.recv(1024).decode())

s.close()
