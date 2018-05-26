#! /bin/bash
#----------------#
#  Install nova  #
#----------------#
#------------------------------------------------------------------------------#
# Source:        https://pastebin.com/raw/61fHwRCC
# Source Code:   https://github.com/resonova/nova-calculator/archive/master.zip
# Created by:    h8rt3rmin8r
# Date:          20180520
#------------------------------------------------------------------------------#

# Establish variables
USER="`sudo echo ${HOME} | cut -c 7-`"
SOURCE_CODE='https://github.com/resonova/nova-calculator/archive/master.zip'
TODAY="`date '+%Y%m%d' | head -c -1`"
NOW="`date '+%Y%m%d-%H%M%S' | head -c -1`"
SOURCE=${HOME}'/.software/nova/'
SOURCE1=${HOME}'/.software/nova/nova-calculator-master/'
SOURCE2='/usr/local/bin/'
NOVASOURCE1=${HOME}'/.software/nova/nova-calculator-master/nova-source/'
NOVASOURCE2='/usr/local/bin/nova-source/'

# Verify root access
uid=`id -u $USERNAME`

if [ "$uid" == "0" ]
    then
        echo ""
        echo "INSTALL: User is root"
        echo "         Beginning installation process..."
        echo ""
    else
        echo ""
        echo "INSTALL: You need to have root access, run again with 'sudo'"
    exit 1
fi
echo ""
echo ${NOW}" -- Installation process started..."
echo ""

# Update the package list and install system updates
apt-get update
apt-get -y upgrade
apt-get -y dist-upgrade

# INSTALL: curl
apt-get install -y curl

# INSTALL: wget
apt-get install -y wget

# INSTALL: dos2unix
apt-get install -y dos2unix

# INSTALL: neofetch
apt-get install -y neofetch

# INSTALL: unzip
apt-get install -y unzip

# INSTALL: jq
apt-get install -y jq

# Update the package list
apt-get update

# Setup core files and construct directories
cd ${HOME}/
mkdir -p ${HOME}/.software/
mkdir -p ${HOME}/.software/nova/
mkdir -p /usr/local/bin/nova-source/
cd ${HOME}/.software/nova/

# Download the nova-calculator repository archive
wget --timeout=10 -q ${SOURCE_CODE}

# Unzip the downloaded archive
unzip -qq master.zip

# Enter the new directory and make/install
cd ${SOURCE1}
mv ${SOURCE1}nova.sh ${SOURCE1}nova
chmod +x ${SOURCE1}nova && chmod +x ${NOVASOURCE1}nova.py

# Move source files into '/usr/local/bin/' and '/usr/local/bin/nova-source/'
mv ${SOURCE1}nova ${SOURCE2}nova
mv ${NOVASOURCE1}nova.py ${NOVASOURCE2}nova.py
mv ${NOVASOURCE1}LICENSE ${NOVASOURCE2}LICENSE
mv ${NOVASOURCE1}PRINT ${NOVASOURCE2}PRINT
mv ${NOVASOURCE1}README ${NOVASOURCE2}README
mv ${NOVASOURCE1}VERSIONS ${NOVASOURCE2}VERSIONS

# Clean up the workspace and generate error log
rm -rf ${SOURCE}
mkdir -p ${SOURCE}
mkdir -p ${SOURCE}logs/
touch ${SOURCE}logs/${TODAY}.log
sudo chown -R ${USER}:${USER} ${HOME}/.software/

# Exit installation script
echo ${TODAY}" -- Installation complete!" > ${HOME}/.software/nova/logs/${TODAY}.log
echo ""
echo ${NOW}" -- Installation complete!"
echo ""
nova -h
exit

################################################################################
                                                   #                           #
                                                   #  "think outside the box"  #
                                                   #                           #
                                                   #    ($) ¯\_(ツ)_/¯ (฿)     #
                                                   #                           #
                                                   #############################
