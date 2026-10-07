#!/bin/bash
#

if [[ $# -eq 0 ]]; then
	echo "Usage $0 <group_name1> <group_name2> ..."
	exit 1
fi

for grp in "$@"; do
	if getent group "$grp" &> /dev/null; then
		echo "[ACTIVE] Group $grp is present on this system."
	else
		echo "[ALERT] Group '$grp' is MISSING!"
	fi
done
