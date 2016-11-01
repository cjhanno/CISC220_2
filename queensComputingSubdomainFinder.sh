#!/bin/bash

for i in $(seq 0 255)
do
  for j in $(seq 0 255)
  do 
  ip=130.15.$i.$j
  nslookup $ip | grep *{.cs.queenu.ca} | awk '{print $4}'
  done
done
