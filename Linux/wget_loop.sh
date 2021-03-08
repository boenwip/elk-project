#!/bin/bash

# List of hosts on vnet
hosts=('10.0.0.6'
        '10.0.0.7'
        '10.0.0.9')

# Set value to false for boolean to not be true.
# Creates infinite loop attempting ssh logins through $hosts list
flag=false
while  [ flag != true ]
do
        for i in ${hosts[@]}
                do
                wget -O - $i > /dev/null 2>&1 # Sounds .html output to /dev/null
                done
done
