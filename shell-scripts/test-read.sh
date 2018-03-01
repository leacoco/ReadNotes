#!/bin/bash

#echo "Press any key to exit the program"
#read -s -n 1 -p"Please pree any key to exit"; echo
echo "Press any key to continue"
#read -n 1 -s -r

readarray myarray < ./shellNotes

echo $myarray
