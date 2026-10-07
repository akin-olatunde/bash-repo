#!/bin/bash

if [[ $# -eq 0 ]]; then
echo "Usage: /usr/local/bin/user_setup.sh <user1> <user2> ..."
exit 1
fi
for name in "$@"; do
if getent passwd "$name" &> /dev/null; then
echo "[SKIP] User "$name" already exists."
else 
useradd "$name"
echo "[CREATE] User "$name" successfully provisioned."
fi
done
