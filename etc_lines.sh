#!/bin/bash
#

list="/etc/passwd"
while read -r line; do
       if [[ -f "$line" ]]; then
               echo "[FILE] $line exists."
       elif [[ -d "$line" ]]; then
               echo "[DIR] $line exists."
       else 
               echo "[] "$line" is neither a standard file or dir."
       fi
done < "$list" 



#for line in /etc/passwd; do
#	if [[ -f "$line" ]]; then
 #              echo "[FILE] "$line" exists."
  #      elif [[ -d "$line" ]]; then
   #            echo "[DIR] "$line" exists."
#        else
 #             echo "[MISSING] "$line" not found."
  #     fi
# done


#list="/etc/passwd"
#while read -r line; do
#	if [[ -f "$line" ]]; then
#		echo "[FILE] $line exists."
#	elif [[ -d "$line" ]]; then
#		echo "[DIR] $line exists."
#	else 
#		echo "[MISSING] $line not found."
#	fi
#done < "$list"
#
