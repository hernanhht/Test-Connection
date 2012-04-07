#!/usr/bin/python
import socket

s = socket.socket()
host = 'www.google.com'
port = 80

s.connect((host, port))

msg = 'GET / HTTP1.0\n\n'
s.send(msg)

buf = s.recv(1024)
while buf:
    print buf
    buf = s.recv(1024)
      
s.close

