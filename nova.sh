#!/bin/bash
######################################################################################
#  NOVA CALCULATOR  #
#####################

# Nova calculator allows floating point arithmetic to be executed in bash in a faster
# and more efficient manner than is currently possible with existing bash tools.

######################################################################################
#  FUNCTIONS  #
###############

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

while test $# -gt 0; do
        case "$1" in
                -h|--help)
                        echo " "
                        echo "NOVA CALCULATOR"
                        echo " "
                        echo "------------------------------------------------------------------------------------"
                        echo " "
                        echo "DESCRIPTION:"
                        echo " "
                        echo "  Nova calculator allows floating point arithmetic to be executed in bash in a faster"
                        echo "  and more efficient manner than is currently possible with existing bash tools."
                        echo " "
                        echo "------------------------------------------------------------------------------------"
                        echo " "
                        echo "COMMAND SYNTAX:"
                        echo " "
                        echo "  nova [options] [number] [number]"
                        echo " "
                        echo "------------------------------------------------------------------------------------"
                        echo " "
                        echo "OPTIONS:"
                        echo " "
                        echo "  -h, --help                    Show brief help"
                        echo "  -r                            Print the project README file"
                        echo "  -p                            Print the project ASCII banner"
                        echo "  -v                            Print the version log"
                        echo "  A [number] [number] ...       Add two or more numbers together"
                        echo "  S [number] [number]           Subtract one number from another number"
                        echo "  M [number] [number] ...       Multiply two or more numbers together"
                        echo "  D [number] [number]           Divide one number by another number"
                        echo " "
                        echo "------------------------------------------------------------------------------------"
                        exit 0
                        ;;
                -v)
                        shift
                        cat nova-source/versions.txt
                        shift
                        ;;

                -r)
                        shift
                        cat nova-source/README.txt
                        shift
                        ;;

                -p)
                        shift
                        cat nova-source/print.txt
                        shift
                        ;;

                *)
                        ./nova-source/nova.py "${1}" "${2} ${3}"
                        break
                        ;;
        esac
done



#case "${1}#${2}#${3}" in

#    "${VAR}#${VAR2}#${VAR3}") ./nova.py "${1}" "${2} ${3}"
 #                             echo "1";;
  #  "${VAR}#"*) ./nova.py "${1}" "`cat ${2}` `echo ${3}`" ;;
   # *"#${VAR3}") ./nova.py "${1}" "`echo ${2}` `cat ${3}`";;
    #"${1}#${2}#${3}") ./nova.py "${1}" "`cat ${22}` `cat ${S3}`";;
    
#esac
