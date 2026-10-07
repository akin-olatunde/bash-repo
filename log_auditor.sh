#!/bin/bash

target_dir="/var/log"

# Validation: Make sure the target directory actually exists first
if [[ ! -d "$target_dir" ]]; then
    echo "ERROR: Target directory $target_dir does not exist."
    exit 1
fi

echo "==== Beginning Storage Audit for '$target_dir' ===="

# 2. Pipe (|) the output stream straight into the while loop
find "$target_dir" -type f -maxdepth 1 -mindepth 1 2>/dev/null | while read -r item; do
	size=$(du -k "$item" | awk '{print $1}')
		if [[ "$size" -ge 100 ]]; then
			echo "[WARNING] '$item' is large! Size: "$size" KB."
		else 
			echo "[OK] '$item' is safe. Size: "$size" KB."
		fi
done




