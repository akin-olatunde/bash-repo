#!/bin/bash
#
# Lists all the groups in the system and their members. 

echo "Name | Shell"
echo "------|--------"

while read -r line; do
  user=$(echo $line | cut -d: -f1)
  shell=$(echo $line | cut -d: -f7)
  echo "$user	$shell"
done < /etc/passwd
