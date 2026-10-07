#!/bin/bash
#
if [[ $# -eq 0 ]]; then
    echo "Usage: $0 <at least one file or directory path(s)>"
    read -p "Supply the file or dir path here: " -r path
    set -- "$path"   # replace positional arguments with the one supplied
fi
while [[ $# -gt 0 ]]; do
	current="$1"

	if [[ -f "$current" ]]; then
        # Use the $item variable so it prints the real file path!
        echo "[FILE] $current exists."
    elif [[ -d "$current" ]]; then
        echo "[DIR] $current exists."
    else
        echo "[MISSING] $item not found."
    fi
	shift
done
