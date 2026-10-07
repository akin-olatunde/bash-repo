#!/bin/bash
#
#if [[ $# -eq 0 ]]; then
#	echo "Usage $0 file1 file2 ..."
#	exit 1
#fi

#while [[ $# -gt 0 ]]; do
#	if [[ -f "$1" ]]; then
#		echo "File "$1" exists."
#	else
#		echo "File "$1" does not exist."
#	fi
#shift
#done

for file in "$@"; do
	if [[ -s "$file" ]]; then
		echo "File "$file" exists."
	else
		echo "File "$file" does not exist."
	fi
done



