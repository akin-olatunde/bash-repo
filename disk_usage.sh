#!/bin/bash
# Target: Alert if the root disk usage exceeds 85%

usage_number=$(df -h / | grep / | awk '{print $5}' | cut -d "%" -f1)

if [[ -z "$usage_number" ]]; then
    echo "ERROR: Failed to parse system disk metrics."
    exit 1
fi

if [[ "$usage_number" -gt 85 ]]; then
    echo "[CRITICAL] Disk space is dangerously low at ${usage_number}%!"
    exit 2
else
    echo "[HEALTHY] Disk utilization is well within safe thresholds (${usage_number}%)."
    exit 0
fi
