#!/bin/bash

#Connor Hannough		10085081
#Vanessa Reda 			10194381
#Ryan Kartavicius		10155548

#clears iptables
sudo iptables -D INPUT 1 -j ACCEPT

#allow ssh from computers in range
sudo iptables -A INPUT -p TCP -s 130.15.*.*/16 -j ACCEPT

#allow ssh from private ip adresses
sudo iptables -A INPUT -p TCP -s 10.*.*.*/8 -j ACCEPT
sudo iptables -A INPUT -p TCP -s 172.16.*.*/16 -j ACCEPT
sudo iptables -A INPUT -p TCP -s 172.31.*.*/16 -j ACCEPT
sudo iptables -A INPUT -p TCP -s 1392.168.*.*/16 -j ACCEPT

#allow HTTP from any ip adress
sudo iptables -A INPUT -p UDP -s *.*.*.*/32 -j ACCEPT

#drop any other TCP traffic
sudo iptables -A INPUT -p TCP -j DROP

#block range out outgoing ip adresses
sudo iptables -A OUTPUT -s 130.15.*.*/16 -j DROP

#inserted at begining of list as it references a single IP adress
#allows specific ip to connect to port 3306
sudo iptables -I INPUT 1 -p TCP -s 130.15.100.100/32 --dport 3306 -j ACCEPT

#drops all other outgoing TCP traffic
sudo iptables -A OUTPUT -p TCP -j DROP
