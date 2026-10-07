#!/bin/bash

# A small script that checks if a file path provided in a variable exists.

# Define a target path 
path="/etc/hosts"

if [[ -f "$path" ]]; then
	echo "File Found!"
	exit 0

else 
	echo "File Missing!"
	exit 1

fi

