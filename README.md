# NOVA CALCULATOR
Simple floating point arithmetic program for the bash command line

```
_______________________________________________
:::.    :::.    ...    :::      .::.:::.     
`;;;;,  `;;; .;;;;;;;. ';;,   ,;;;' ;;`;;    
  [[[[[. '[[,[[     \[[,\[[  .[[/  ,[[ '[[,  
  $$$ "Y$c$$$$$,     $$$ Y$c.$$"  c$$$cc$$$c 
  888    Y88"888,_ _,88P  Y88P     888   888,
  MMM     YM  "YMMMMMP"    MP      YMM   ""` 
           _            _       _             
  ___ __ _| | ___ _   _| | __ _| |_ ___  _ __ 
 / __/ _` | |/ __| | | | |/ _` | __/ _ \| '__|
| (_| (_| | | (__| |_| | | (_| | || (_) | |   
 \___\__,_|_|\___|\__,_|_|\__,_|\__\___/|_|   
_______________________________________________
```

## DESCRIPTION:

Nova calculator allows floating point arithmetic to be executed in bash in a faster
and more efficient manner than is currently possible with existing bash tools.


## USAGE SYNTAX:

```nova [parameter] <first_number> <second_number> ...```

## USAGE EXAMPLES:

  ### READ THE VERSION LOG
  ```nova -v```

  ### VIEW THE PROJECT README
  ```nova -h```
  <br>
  ```nova --help```

  ### ${A} - ADD TWO OR MORE NUMBERS TOGETHER
  ```nova A ${FIRST_NUMBER} ${SECOND_NUMBER} ${N_NUMBER}```
  <br>
  ```nova A 1.234 2.345```

  ### ${S} - SUBTRACT ONE NUMBER FROM ANOTHER NUMBER
  Note: The 'S' parameter will only operate on two input numbers
  ```nova S ${FIRST_NUMBER} ${SECOND_NUMBER}```
  <br>
  ```nova S 1.234 2.345```

  ### ${M} - MULTIPLY TWO OR MORE NUMBERS TOGETHER
  ```nova M ${FIRST_NUMBER} ${SECOND_NUMBER} ${N_NUMBER}```
  <br>
  ```nova M 1.234 2.345```

  ### ${D} - DIVIDE ONE NUMBER BY ANOTHER NUMBER
  Note: The 'D' parameter will only operate on two input numbers
  ```nova D ${NUMERATOR} ${DENOMINATOR}```
  <br>
  ```nova D 1 2```

Note: during pre-install testing, reference the core nova script with ./nova.sh


## ATTRIBUTION:

Nova was created by the following ResoNova developers...

  - kryptomuncher
  - brettwy861
  - h8rt3rmin8r


## DEPENDANCIES:

  - Python 2.7
  - Python module: "Decimal"
  - dos2unix


## FEEDBACK & BUG REPORTS:

(Email) research@resonova.com

