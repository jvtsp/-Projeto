#!/bin/bash
clear
X=1; INT=0
until [ $X == "0" ]; do
	read -p "Olá seu zé. Escreva um número: " NU[$INT]
	[ ${NU[$INT]} == "0" ] && X=0
	let INT=$INT+1
done
X=${#NU[@]}
echo $X
