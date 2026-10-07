#!/bin/bash
#

if [[ $# -lt 1 ]]; then
	echo "ERROR: Please supply at least one username."
	echo "Usage: $0 user1 user2 ..."
	exit 1
fi
for user in "$@"; do 
	if getent passwd "$user" &> /dev/null; then
		echo "Status: User '$user' ALREADY EXISTS."
	else
		echo "Username '$user' is available."
		echo "Creating: User '$user' ..."
		useradd -m "$user"
#		if $? -eq 0; then
		echo "User '$user' CREATED."
#			echo "Could not create User $user. Kindly check your permissions."
	fi
done
