#!/bin/bash
#
# Lists all the groups in the system and their members. 

echo "Group | Members"
echo "------|--------"

while read -r line; do
  group=$(echo $line | cut -d: -f1)
  members=$(echo $line | cut -d: -f4)
  echo "$group has the following members $members"
done < /etc/group
