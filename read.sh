#!/bin/bash
#
read -p "Enter something, anything... " -s
echo "You typed: $REPLY"

read -p "Now, enter your name here: " user
echo "$user"

read -p "Kindly supply a password here. Anything will do: " -r -s pass
echo ""
echo "$pass"

echo -e "Your username is $user, and password is $pass. Today's date is $(date +%F) and the time is $(date +%T) . \n Thank you."

