#!/bin/bash -eux

#echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list
# For source package access, uncomment the following line
#echo "deb-src http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list

#apt-key adv --keyserver hkp://keys.gnupg.net --recv-keys 7D8D0BF6
apt-get update
sudo apt-get upgrade -y
#apt-add-repository ppa:ansible/ansible
#apt-get update && apt-get install kali-linux
#apt-get update && apt-get install  kali-linux-all
#apt-get update && apt-get install  kali-linux-forensic -y
apt-get update && apt-get install kali-linux-large -y

#apt-get update && apt-get install  kali-linux-gpu -y
#apt-get update && apt-get install  kali-linux-pwtools -y
#apt-get update && apt-get install  kali-linux-rfid -y
#apt-get update && apt-get install  kali-linux-sdr -y

#apt-get update && apt-get install   kali-linux-top10 -y
#apt-get update && apt-get install   kali-linux-voip -y
#apt-get update && apt-get install   kali-linux-web -y
#apt-get update && apt-get install  kali-linux-wireless -y
