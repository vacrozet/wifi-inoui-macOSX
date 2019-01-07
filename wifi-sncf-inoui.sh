#!/bin/bash

alldnsserver=$(cat /etc/resolv.conf| grep "nameserver" | cut -c12- | tr "\n" " " | rev | cut -c1- | rev)
newsdns=$(route -n get default | grep gateway | cut -c14-)
sudo networksetup -setdnsservers Wi-Fi ${alldnsserver} ${newsdns}
sleep 2
open -a /Applications/Google\ Chrome.app -n --args 'https://wifi.sncf/'
