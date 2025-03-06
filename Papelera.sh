#!/bin/bash

if [ -d "$HOME/Papelera" ]; then
     if [ "$1" == "-r" ] && [ -n "$2" ]; then
        if [ -f "$HOME/Papelera/$2" ]; then
           mv "$HOME/Papelera/$2" ./
	else
           echo "No se ha encontrado el archivo"
	fi
     else
	if [ -f "$1" ];then
	   mv $1 "$HOME/Papelera"
	else
	   echo "No se ha encontrado"
	fi
     fi
else
   mkdir "$HOME/Papelera"
   mv "$1" "$HOME/Papelera"
fi
