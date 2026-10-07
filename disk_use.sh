#!/bin/bash

df -h | grep -v "Filesystem" | while read -r line; do
filesystem=$(echo "$line" | awk '{print $1}')
size=$(echo "$line" | awk '{print $2}')
used=$(echo "$line" | awk '{print $5}')
echo "Filesystem: "$filesystem", Size: "$size", Used: "$used""
done
