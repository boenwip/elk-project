#!/bin/bash

hosts=('10.0.0.6'
        '10.0.0.7'
        '10.0.0.9')

for host in ${hosts[@]};
do
ssh azadmin@$host
done