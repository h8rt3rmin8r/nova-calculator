#!/bin/bash

if [[ "$1" != "" ]]; then
    VAR="$1"
else
    VAR=.
fi
if [[ "$2" != "" ]]; then
    VAR2="$2"
else
    VAR2=.
fi
if [[ "$3" != "" ]]; then
    VAR3="$3"
else
    VAR3=.
fi
#./nova.py "${VAR}" "`cat ${VAR2}` `cat ${VAR3}`"

case "${1}#${2}#${3}" in

    "${VAR}#${VAR2}#${VAR3}") ./nova.py "${1}" "${2} ${3}"
                              echo "1";;
    "${VAR}#"*) ./nova.py "${1}" "`cat ${2}` `echo ${3}`" ;;
    *"#${VAR3}") ./nova.py "${1}" "`echo ${2}` `cat ${3}`";;
    "${1}#${2}#${3}") ./nova.py "${1}" "`cat ${22}` `cat ${S3}`";;
    
esac
