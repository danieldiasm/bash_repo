#! /usr/bin/bash

PY3=`which python3`
PIP3=`which pip3`

clear
echo "PYCHECK.SH"
echo "Will now check for python installations..."
echo 

# Check for Python3 and collect if installation is desired
if [ -z $PY3 ]; then
    echo "No Python 3 installation has been found."
    echo "Would you like to install it (y/n)?"
    read PY3INSTALL
else
    echo "Python 3 is already installed!"
fi

# Check for PIP3 and collect if installation is desired
if [ -z $PIP3 ]; then
    echo "No pip3 installation has been found."
    echo "Would you like to install it (y/n)?"
    read PIP3INSTALL
else
    echo "Pip3 is already installed!"
fi

if [ "$PY3INSTALL" == "y" ] || [ "$PY3INSTALL" == "Y" ]; then
    echo "Installing..."
    sudo apt-get -y install python3.9 python3.9-dev
    echo "[DONE] Python 3.9 installation finished!"
fi

if [ "$PIP3INSTALL" == "y" ] || [ "$PIP3INSTALL" == "Y" ]; then
    echo "Installing..."
    sudo apt-get -y install python3-pip
    echo "[DONE] Python PIP 3 installation finished!"
fi