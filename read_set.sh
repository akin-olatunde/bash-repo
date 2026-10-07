#!/bin/bash
#
# Demand for an argument.
if [[ $# -eq 0 ]]; then
	echo "Usage: $0 (Supply at least one file or directory path(s))"
	read -p "Supply the file or dir path here: " -r path
	set -- "$path" # replaces argument with the one supplied.
fi
# Loop through each item passed as a command-line argument
for item in "$@"; do
    if [[ -f "$item" ]]; then
        # Use the $item variable so it prints the real file path!
	echo "[FILE] $item exists."  
    elif [[ -d "$item" ]]; then
        echo "[DIR] $item exists."
    else 
        echo "[MISSING] $item not found."
    fi
done
