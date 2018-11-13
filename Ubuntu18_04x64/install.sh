#!/bin/sh

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get autoremove -y
sudo apt-get install vim -y
sudo apt-get install build-essential -y 
sudo apt-get install terminator -y
sudo apt-get install python-pip -y 
sudo apt-get install git -y
sudo apt-get install cmake -y
sudo apt-get install net-tools -y
sudo apt-get install ninja-build -y 
sudo apt-get install subversion -y
sudo apt-get install htop -y
sudo apt-get install screenfetch -y

echo set completion-ignore-case on | sudo tee -a /etc/inputrc
