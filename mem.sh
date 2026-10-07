#!/bin/bash
#
# A script that monitors memory utilization on my VM.
#
avail_mem=$(free -m -h | grep "Mem:" | awk '{print $7}' | cut -d "G" -f1)

if [[ "$avail_mem" -lt 1 ]]; then
	echo "[ALERT] Low memory state! Only ${avail_mem}GB available."
	exit 1
else
	echo "[OK] Memory levels stable. ${avail_mem}GB available."
	exit 0
fi


