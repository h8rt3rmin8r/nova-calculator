#!/usr/bin/python
from decimal import Decimal
import sys
op = sys.argv[1]
data = sys.argv[2]
if op.upper() == 'A' or op.upper() == '-A':
    if type(data) == str:
        s = data.split(' ')
        for idx,item in enumerate(s):
            s[idx] = float(item)
        print(sum(s))          
    else:
        print('A: input argument type is not a string')          
elif op.upper() == 'S' or op.upper() == '-S':
    if type(data) == str:
        s = data.split(' ')
        for idx,item in enumerate(s):
            s[idx] = float(item)
        print(s[0]-s[1])
    else:
        print('S: input argument type is not a string') 
elif op.upper() == 'M' or op.upper() == '-M':     
    if type(data) == str:
        s = data.split(' ')
        for idx,item in enumerate(s):
            s[idx] = float(item)
        result=reduce(lambda x, y: x*y, s)
        print(Decimal(result))
    else:
        print('M: input argument type is not a string')   
elif op.upper() == 'D' or op.upper() == '-D':
    if type(data) == str:
        s = data.split(' ')
        for idx,item in enumerate(s):
            s[idx] = float(item)
        print(Decimal(float(s[0]))/Decimal(float(s[1])))
    else:
        print('D: input argument type is not a string') 
else:
    print("nova: try 'nova -h' for more information")
