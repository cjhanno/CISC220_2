#!/bin/bash


#Connor Hannough		10085081
#Vanessa Reda 			10194381
#Ryan Kartavicius		10155548

clear

pstree -lp 1 | less | grep -Po '(?<=\()[0-9]+(?=\))' | xargs ps f -p 
	
	
