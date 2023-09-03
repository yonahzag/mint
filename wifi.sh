#!/bin/bash
echo -e "Welcome to wifi wizard!\n These are all the networks near you: "
nmcli dev wifi list
echo -e "Please choose a SSID (network name) to connect to: \n"
read ssid
echo -e "Please enter the password to the network: "
read pswd
sleep 2
clear
nmcli dev wifi connect $ssid password $pswd
