#!/bin/bash
#
# Script to audit and create user accounts in bulk.
#
if [[ $# -lt 1 ]]; then
	echo "Usage: /usr/local/bin/user_setup.sh <user1> <user2> ..."
	exit 1
fi

for user in "$@"; do
	if getent passwd "$user" &> /dev/null; then
		echo "[SKIP] User '$user' already exists."
	else
		useradd $user
		echo "[CREATE] User '$user' successfully provisioned."
	fi
done



