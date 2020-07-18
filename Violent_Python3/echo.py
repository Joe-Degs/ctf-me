#!/usr/bin/env python3

import socket
s = socket.socket()
s.connect(('ad.samsclass.info', 10102))
print(s.recv(1024).decode())
s.send('Goodbye'.encode())
print(s.recv(1024).decode())
s.close()

