#!/bin/bash

echo "A Quick System Audit Script"

now="$(date +'%x  %X')"
echo $now

echo -e "Machine Type Info: $MACHTYPE \n"

echo -e "Uname info: $(uname -a) \n"
echo -e "IP Info: $(ip addr | head -9 | tail -1 | awk -F " " '{print $2}') \n"

echo "Hostname: $(hostname -s)"
echo "DNS Servers: $(cat /etc/resolv.conf)"

echo "Memory Info: $(free -h)"

echo -e "\nCPU Info: $(lscpu | grep 'CPU')"

echo -e "\nDisk Usage: $(df -H | head -2)"

echo -e "\nWho is logged in: \n $(who -a) \n"