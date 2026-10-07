#!/bin/bash

if [[ $# -ne 2 ]]; then
echo "Takes two arguments, first must be a username; second must be valid directory."
exit 1
elif getent passwd "$1" &> /dev/null; then
echo "Sorry, username already exists."
elif [[ ! -d "$2" ]]; then
echo "The second argument supplied is not a valid directory."
exit 2
else
echo "Provisioning user "$1" with home directory "$2"."
fi
