#!/bin/bash

#Connor Hannough		10085081
#Vanessa Reda 			10194381
#Ryan Kartavicius		10155548

for i in $(seq 0 255)
do
  for j in $(seq 0 255)
  do 
  ip=130.15.$i.$j
  nslookup $ip | grep *{.cs.queenu.ca} | awk '{print $4}'
  done
done
