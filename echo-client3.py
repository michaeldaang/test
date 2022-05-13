#!/usr/bin/env python3

from os import abort
import socket
import time
import csv
import array
from turtle import delay
import numpy as np
from unittest import skip



with open("txt1.txt", 'r') as file:
    text = file.read().replace('\n', '')
text2 = bytes(text, 'ascii')
HOST = "192.168.0.102"  # The server's hostname or IP address
PORT = 5002  # The port used by the server

foo =0
with open('test.csv', 'w' ,newline='' ) as f:
    for x in range(0,5):
        #start=time.time()
        foo += 1
        bar = str(foo)
        king = bar.encode()
        with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
            s.connect((HOST, PORT))
            start=time.time()
            s.sendall(text2)
            print(f"send {text2!r}")
            data = s.recv(1024)
            end = time.time()
            print(f"Received {data!r}")
            foo = end - start
            bar = str(foo)
            #print(f"{bar}")
            writer = csv.writer(f)
            writer.writerow({bar})


from numpy import genfromtxt, maximum
data = genfromtxt('test.csv', delimiter=",", skip_header = 1)
data_sorted = np.sort(data)


time = list(range(1,5))




#print("data sorted" , data_sorted)
maximum = max(data)
minimum = min(data)
mean = np.mean(data)
print("The max value is: " ,maximum)
print("The min value is: " , minimum)
print("The mean value is: " , mean)
