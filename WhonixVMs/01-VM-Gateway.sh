#!/bin/bash
## 01-VM-Gateway.sh
## Continue of Anonguide-Debian.sh
## Hellrezistor Contribution to Anonguide.pdf
## Respect and support Anon
## V2.21
## 
## This script its the 1st STEP TO DO
## After your Whonix Gateway Boot 1st Time

echo
read -s -p "Set New Root Password:
" RTPASS
echo
read -s -p "Set New $USER Password:
" RTUSER
echo
echo
echo " sudo password is:  changeme  :ONLY THIS TIME"
sleep 2
echo
echo -e "$RTPASS\n$RTPASS" | sudo passwd root
echo -e "changeme\n$RTUSER\n$RTUSER" | passwd

sudo systemctl stop rsyslog.service
sudo systemctl disable rsyslog.service

sudo apt-get-update-plus dist-upgrade && sudo apt-get clean
sudo apt-get install zerofree

echo "
1)Create Shortcuts Favoritos 
  - Onion Circuits
  
2) Go TO Debian Host script and PRESS <Enter> Key to continue...."

read -p "## 1ST Prep VM GATEWAY FINITO ##
Press <Enter> Key to conclude"

RTPASS="suckme"
RTUSER="suckmeto"
