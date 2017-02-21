#!/bin/bash

echo "apt-get -qq update"
sudo apt-get -qq update

echo python --version
python --version
echo pip --version
pip --version

echo "apt-get -qq update"
sudo apt-get -qq update

echo "sudo apt-get -qq -y install python-dev libssl-dev libffi-dev"
sudo apt-get -qq -y install python-dev libssl-dev libffi-dev

echo sudo apt-get update
sudo apt-get update

echo "sudo pip install virtualenv"
sudo pip install virtualenv

