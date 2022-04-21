# echo-client.py

from os import abort
import socket
import time
import csv
import array
from turtle import delay
import numpy as np
from unittest import skip
import matplotlib.pyplot as plt



with open("text24k.txt", 'r') as file:
    text = file.read().replace('\n', '')
text2 = bytes(text, 'ascii')
HOST = "192.168.0.102"  # The server's hostname or IP address
PORT = 7  # The port used by the server
    

with open('test.csv', 'w' ,newline='' ) as f:
    for x in range(0,200):
        #start=time.time()
        with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
            s.connect((HOST, PORT))
            start=time.time()
            s.sendall(text2)
            data = s.recv(1024)
            end = time.time()
            #print(f"Received {data!r}")
            foo = end - start
            bar = str(foo)
            #print(f"{bar}")
    

            writer = csv.writer(f)
            writer.writerow({bar})
            

from numpy import genfromtxt, maximum
data = genfromtxt('test.csv', delimiter=",", skip_header = 1)
data_sorted = np.sort(data)


time = list(range(1,200))




#print("data sorted" , data_sorted)
maximum = max(data)
minimum = min(data)
mean = np.mean(data)
print("The max value is: " ,maximum)
print("The min value is: " , minimum)
print("The mean value is: " , mean)


plt.plot(time , data)
plt.xlabel('Iteration')
plt.ylabel('Time (S)')
plt.show()
