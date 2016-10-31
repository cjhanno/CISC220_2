#!/bin/bash
clear

pstree -lp 1 | less | grep -Po '(?<=\()[0-9]+(?=\))' | xargs ps f -p 
	
	
