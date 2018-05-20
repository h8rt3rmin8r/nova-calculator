#! /bin/bash

# Install nova calculator
# Created by h8rt3rmin8r on 20180520

# Establish variables
SOURCE1=${HOME}'/.nova/nova-calculator-master/'
SOURCE2='/usr/local/bin/'
NOVASOURCE1=${HOME}'/.nova/nova-calculator-master/nova-source/'
NOVASOURCE2='/usr/local/bin/nova-source/'
SOURCE_CODE='https://github.com/resonova/nova-calculator/archive/master.zip'

# Verify root access
uid=`id -u $USERNAME`

if [ "$uid" == "0" ]
    then
        echo ""
        echo "install.sh: User is root"
        echo "            Beginning installation process..."
        echo ""
    else
        echo ""
        echo "install.sh: You need to have root access, run again in sudo"
        echo "                Operate as root with the command, 'sudo -s'"
    exit 1
fi

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

# INSTALL: unzip
apt-get install -y unzip

# INSTALL: jq
apt-get install -y jq

# Update the package list
apt-get update

# Setup core files and construct directories
cd ${HOME}/
mkdir -p ${HOME}/.nova
cd ${HOME}/.nova/

# Download the nova-calculator repository archive
wget --timeout=10 -q ${SOURCE_CODE}

# Unzip the downloaded archive
unzip -qq master.zip

# Enter the new directory and make source scripts executable
cd ${SOURCE1}
mv ${SOURCE1}nova.sh ${SOURCE1}nova
chmod +x ${SOURCE1}nova
chmod +x ${NOVASOURCE1}nova.py

# Make the nova-source bin location
mkdir -p /usr/local/bin/nova-source/

# Move source files into '/usr/local/bin/' and '/usr/local/bin/nova-source/'
mv ${SOURCE1}nova ${SOURCE2}nova
mv ${NOVASOURCE1}nova.py ${NOVASOURCE2}nova.py
mv ${NOVASOURCE1}LICENSE ${NOVASOURCE2}LICENSE
mv ${NOVASOURCE1}PRINT ${NOVASOURCE2}PRINT
mv ${NOVASOURCE1}README ${NOVASOURCE2}README
mv ${NOVASOURCE1}VERSIONS ${NOVASOURCE2}VERSIONS

# POSSIBLE BUGS EXIST IN ACCESS PROVISIONS
#chmod -R 777 /usr/local/bin

# Clean up the workspace
rm -rf ${HOME}/.nova/

# Exit installation script
echo "Installation complete!"
exit

################################################################################
                                                   #                           #
                                                   #  "think outside the box"  #
                                                   #                           #
                                                   #    ($) ¯\_(ツ)_/¯ (฿)     #
                                                   #                           #
                                                   #############################
