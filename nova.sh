#!/bin/bash
################################################################################
#  NOVA CALCULATOR  #
#####################
#
# Nova calculator allows floating point arithmetic to be executed in
# bash in a faster and more efficient manner than is currently possible
# with existing bash tools.
#
################################################################################
#  VARIABLES  #
###############

TODAY="`TZ=America/New_York date '+%Y%m%d' | head -c -1`"
NOVA_SOURCE='/usr/local/bin/nova-source/'
LOG=${HOME}'/.nova/logs/'${TODAY}'.log'

ROOT1='https://raw.githubusercontent.com/'
ROOT2='https://pastebin.com/raw/'

VERSIONS=${ROOT1}'resonova/nova-calculator/master/nova-source/VERSIONS'
README=${ROOT1}'resonova/nova-calculator/master/nova-source/README'
PRINT=${ROOT2}'dtVQTHhs'
LICENSE=${ROOT2}'Fqbwgcvv'

################################################################################
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
                        echo ""
                        echo "NOVA CALCULATOR"
                        echo ""
                        echo "-------------------------------------------------------------------------"
                        echo ""
                        echo "DESCRIPTION:"
                        echo ""
                        echo "  Nova calculator allows floating point arithmetic to be executed in"
                        echo "  bash in a faster and more efficient manner than is currently possible"
                        echo "  with existing bash tools."
                        echo ""
                        echo "-------------------------------------------------------------------------"
                        echo ""
                        echo "COMMAND SYNTAX:"
                        echo ""
                        echo "  nova [options] [number] [number]"
                        echo ""
                        echo "-------------------------------------------------------------------------"
                        echo ""
                        echo "OPTIONS:"
                        echo ""
                        echo "  -h, --help          Show brief help"
                        echo "  -r, --readme        Print the project README file"
                        echo "  -p, --print         Print the project ASCII banner"
                        echo "  -v, --version       Print the version log"
                        echo "  -L, --license       Print the software licence information"
                        echo ""
                        echo "MATH OPERATIONS:"
                        echo ""
                        echo "  -A, A, -a, a [#] [#]    Add numbers together"
                        echo "  -S, S, -s, s [#] [#]    Subtract one number from another number"
                        echo "  -M, M, -m, m [#] [#]    Multiply numbers together"
                        echo "  -D, D, -d, d [#] [#]    Divide one number by another number"
                        echo ""
                        echo "-------------------------------------------------------------------------"
                        exit 0
                        ;;
                        
                -v|--version|--versions)
                        shift
                        echo ""; \
                            curl -s ${VERSIONS} 2>> ${LOG}; \
                            echo ""; \
                            echo ""
                        shift
                        ;;

                -r|--readme)
                        shift
                        echo ""; \
                            curl -s ${README} 2>> ${LOG}; \
                            echo ""; \
                            echo ""
                        shift
                        ;;

                -p|--print)
                        shift
                        echo ""; \
                            curl -s ${PRINT} 2>> ${LOG}; \
                            echo ""; \
                            echo ""
                        shift
                        ;;
                        
                -L|--license)     
                        shift
                        echo ""; \
                            curl -s ${LICENSE} 2>> ${LOG}; \
                            echo ""
                        shift
                        ;;

                *)
                        ${NOVA_SOURCE}nova.py "${1}" "${2} ${3}" 2>> ${LOG}
                        break
                        ;;
        esac
done

################################################################################
                                                   #                           #
                                                   #  "think outside the box"  #
                                                   #                           #
                                                   #    ($) ¯\_(ツ)_/¯ (฿)     #
                                                   #                           #
                                                   #############################
