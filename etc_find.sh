#!/bin/bash
#
# Loop through all .conf files inside /etc/

for config_file in $(find /etc -type f -name "*.conf" 2>/dev/null); do
    # Check if files actually exist to avoid empty match errors
    if [[ -f "$config_file" ]]; then
        echo "Found configuration asset: $config_file"
    fi
done

