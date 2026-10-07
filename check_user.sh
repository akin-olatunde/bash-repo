#!/bin/bash

if [[ $# -ne 1 ]]; then
	echo "Kindly supply only one username."
	exit 0
fi

for name in "$@"; do 
	if getent passwd "$name" &> /dev/null; then
		echo "User "$name" exists."
	else 
		echo "User "$name" does not exist."
	fi
done
