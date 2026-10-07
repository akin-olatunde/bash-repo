#!/bin/bash
#
#Read the length of password typed.

read -p "Enter your username: " -r user
read -p "Enter your password: " -r -s pass
echo ""
if  [[ ${#pass} -lt 8 ]]; then
	echo "Sorry, "$user", password length must be 8 characters or more."
	exit 1
else
	echo "Welcome "$user". Your password length is "${#pass}"."
fi
