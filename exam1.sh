#!/bin/bash

if [[ $# -eq 0 ]]; then
echo "Kindly supply one or more service(s) name(s) separated by spaces."
exit 0
fi

for service in $@; do
status="$(systemctl is-active "$service")"

if [[ "$status" == "active" ]]; then
echo "[HEALTHY] "$service" is running smoothly."
continue
else
echo "[CRITICAL] "$service" is DOWN!"
echo "Attempting to restart it..."
echo ""
systemctl reload-or-restart "$service" || systemctl start "$service"

if [[ $? -eq 0 ]]; then
echo "Restarted "$service" successfully."
echo ""
else
echo "Failed to restart "$service"."
echo ""
fi
fi
done
