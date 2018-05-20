#! /bin/bash
# Install nova calculator

# VERIFY ROOT ACCESS
uid=`id -u $USERNAME`

if [ "$uid" == "0" ]
    then
        echo "[ install.sh ]: User is root"
    else
        echo "[ install.sh ]: You need to have root access, run again in sudo"
        echo "[ install.sh ]: Operate as root with the command, 'sudo -s'"
    exit 1
fi

# UPDATE THE PACKAGE LIST & INSTALL UPDATES
apt-get update
apt-get -y upgrade
apt-get -y dist-upgrade

# INSTALL: DOS2UNIX
apt-get install -y dos2unix

# MAKE CORE FILES EXECUTABLE AND MOVE INTO /usr/local/bin
chmod +x nova.sh
chmod +x nova-source/nova.py
mkdir -p /usr/local/bin/nova-source/
touch /usr/local/bin/nova
cp nova.sh /usr/local/bin/nova
cp nova-source/* /usr/local/bin/nova-source/
chmod -R 777 /usr/local/bin

# EXIT INSTALL
echo "Installation complete!"
