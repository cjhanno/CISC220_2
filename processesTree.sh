#!/bin/bash
clear

pstree -lp 1 | less | grep -Po '(?<=\()[0-9]+(?=\))' | xargs ps f -p 


#for index in ${!PIDArray[@]}; do
	#echo -n 'PID: ' ${PIDArray[@]:1:4}
	#echo -n 'STARTED: #look for elements around time'
	#echo -n 'COMMAND: #space after time'
#done
	
	
