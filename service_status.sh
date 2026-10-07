#!/bin/bash

logfile="/var/log/service_monitor.log"

if [[ $# -eq 0 ]]; then
  echo "Kindly supply one or more service(s) name(s) separated by spaces."
  exit 1
fi

for service in "$@"; do
  status="$(systemctl is-active "$service")"

  if [[ "$status" == "active" ]]; then
    echo "[HEALTHY] $service is running smoothly."
    echo "$(date '+%Y-%m-%d %H:%M:%S') [HEALTHY] $service is running smoothly." >> "$logfile"
    continue
  else
    echo "[CRITICAL] $service is DOWN!"
    echo "Attempting to restart it..."
    echo "$(date '+%Y-%m-%d %H:%M:%S') [CRITICAL] $service was DOWN. Attempting restart..." >> "$logfile"

    systemctl reload-or-restart "$service" || systemctl start "$service"

    if [[ $? -eq 0 ]]; then
      echo "Restarted "$service" successfully."
      echo "$(date '+%Y-%m-%d %H:%M:%S') [INFO] Restarted $service successfully." >> "$logfile"
    else
      echo "Failed to restart "$service"."
      echo "$(date '+%Y-%m-%d %H:%M:%S') [ERROR] Failed to restart "$service"." >> "$logfile"
    fi
  fi
done
 
