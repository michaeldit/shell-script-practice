#!/bin/bash

echo "Enter the starting IP address : "
read FirstIP

echo "Enter the /notation "
read Subnet_Mask

echo "Enter the port number you want to scan for: "
read port

nmap -sT $FirstIP$Subnet_Mask -p $port > /dev/null -oG MySQLscan

cat MySQLscan | grep open > MySQLscan2

cat MySQLscan2

echo "Delete files after reading? y or n?"
read delete

if $delete == 'y'
then
	rm MySQLscan && rm MySQLscan2
	
fi


