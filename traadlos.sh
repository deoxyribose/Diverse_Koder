#!/bin/sh
ifconfig wlan0 up
iwlist wlan0 scan | grep -i essid | sort -u
iwconfig wlan0 essid $1 
dhcpcd wlan0
