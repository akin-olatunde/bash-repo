#!/bin/bash

if [[ $# -eq 0 ]]; then
	echo "No services provided."
	exit
fi

for service in "$@"; do
	status="$(systemctl is-active "$1")"
if "$status" == 'active'; then
echo "Service "$1" is "$status""
elif "$status" == 'inactive'; then
echo "Service "$1" is "$status""
else
echo "Service "$1" is "$status""
fi
done


