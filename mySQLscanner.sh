#!/bin/bash

#this script is designed to find hosts with MySQL installed

nmap -sT 172.16.227.214/22 -p 80 > /dev/null -oG MySQLscan

cat MySQLscan | grep open > mySQLscan2

cat mySQLscan2

