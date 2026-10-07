#!/bin/bash

if [[ $# -ne 1 ]]; then
	echo "Kindly supply exactly one name."
	exit 1
fi

if getent passwd "$1" &> /dev/null; then
	uid=$(getent passwd "$1" | awk -F: '{print $3}')
	home_dir=$(getent passwd "$1" | awk -F: '{print $6}')
	login_shell=$(getent passwd "$1" | awk -F: '{print $7}')
echo "UID is "$uid""
echo "Home Directory is "$home_dir""
echo "Login Shell is "$login_shell""

else
	echo "The user does not exist."
	exit 2
fi

