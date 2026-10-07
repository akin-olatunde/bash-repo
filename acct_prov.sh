#!/bin/bash
#
if [[ $# -ne 2 ]]; then
	echo "Usage: $0 <username> <home_directory>"
	exit 1
fi

username="$1"
homedir="$2"

if getent passwd "$username" &> /dev/null; then
	echo "ERROR: Username $username already exists on this system!"
	exit 3
else 
	echo "Username $username is available."
fi

if [[ ! -d "$homedir" ]]; then
	echo "Directory name supplied ($homedir) does not exist."
	exit 2
else 
	echo "Provisioning user "$username" with home directory "$homedir""
fi
