#!/usr/bin/python
from decimal import Decimal

import sys



op = sys.argv[1]

data = sys.argv[2]

if op.upper() == 'A'or'-A':

    if type(data) == str:

        s = data.split(' ')

        for idx,item in enumerate(s):

            s[idx] = float(item)

        print(s[0]+s[1])
        
        
    else:

        print('A: input argument type is not a string')          

elif op.upper() == 'S'or'-S':

    if type(data) == str:

        s = data.split(' ')

        for idx,item in enumerate(s):

            s[idx] = float(item)

        print(s[0]-s[1])

    else:

        print('S: input argument type is not a string') 

elif op.upper() == 'M'or'-M':     

    if type(data) == str:

        s = data.split(' ')

        for idx,item in enumerate(s):

            s[idx] = float(item)

        result=reduce(lambda x, y: x*y, s)

        print(result)

    else:

        print('M: input argument type is not a string')   

elif op.upper() == 'D'or'-D':

    if type(data) == str:

        s = data.split(' ')

        for idx,item in enumerate(s):

            s[idx] = float(item)

        print(float(s[0])/float(s[1]))

    else:

        print('D: input argument type is not a string') 

else:

    print("nova: try 'nova -h' for more information")

