#!/bin/bash
#
if [[ $# -ne 2 ]]; then
	echo "Usage $0 num1 num2"
	exit 1
else 
	sum=$(($1+$2))
	echo "Sum is $sum"
fi


echo "Today's date is $(date +%F) and the time is $(date +%T)"
echo "...$(date +%c)"


