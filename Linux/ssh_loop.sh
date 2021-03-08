#!/bin/bash

hosts=('10.0.0.6'
        '10.0.0.7'
        '10.0.0.9')

flag=false
while  [ flag != true ]
do
        for i in ${hosts[@]}
                do
                ssh azadmin@$i
                done
done
