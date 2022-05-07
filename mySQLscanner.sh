#!/bin/bash

#this script is designed to find hosts with MySQL installed

nmap -sT 10.0.0.0/24 -p 3306 > /dev/null -oG MySQLscan

cat MySQLscan | grep open > mySQLscan2

cat mySQLscan2

