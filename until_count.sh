#!/bin/bash
#
count=1
until [[ "$count" -eq 10 ]]; do 
	echo "Count is '$count'"
	count=$((count+1))
done
