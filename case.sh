#!/bin/bash

arg="$1"

if [[ -z "$arg" ]]; then
	echo "You must supply a response. Yes (y) or No (n)"
	exit 0
fi


case "$arg" in
	"yes"|"y"|"Yes")
    echo "Action Confirmed!" 
    ;;

"no"|"n"|"No")
    echo "Action Cancelled!"
    ;;

	*)
	    echo "Invalid Input!"
	    ;;
esac

