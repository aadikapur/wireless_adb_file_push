#!/usr/bin/env bash

#download adb and connect usb before this
PORT=5555

#get USB name and IP address
if [ ! -z "$(ls | grep ip.txt)" ];
then
    echo 'Using IP Address in ip.txt...'
    IP_ADDRESS=$(cat ip.txt)
else
    echo 'Finding IP Address through USB...'
    IP_ADDRESS=$(adb shell "ip a | grep 'inet ' | grep global | sed 's/ *//' \
        | cut -d' ' -f2| sed 's/\/.*//'")
    echo $IP_ADDRESS > ip.txt
fi

#connect wirelessly
adb tcpip $PORT
adb connect $IP_ADDRESS:$PORT | grep connected

#we are connected wirelessly now.
echo "Remove USB connection if its connected then press any key..."
read -sn1 input
read -p "Enter path of file or directory to push relative to \$HOME: " filepath
adb push ~/$filepath /storage/self/primary/Download/
