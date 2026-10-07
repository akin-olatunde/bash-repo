
#!/bin/bash
/usr/bin/find /etc -type f -name "*.conf" | while read -r config_file; do
if [[ -f "$config_file" ]]; then
echo "Found configuration asset: $config_file"
fi
done
