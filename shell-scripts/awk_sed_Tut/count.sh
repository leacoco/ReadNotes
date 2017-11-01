#!/bin/bash -xx
##Count the number of time domain appears in the file

DOMAIN_FILE=$1
SEARCH_PATTERN=$2

if [ -z $DOMAIN_FILE ]; then
  echo "Please enter a valid domain filename" && exit 1
fi

if [ -z $SEARCH_PATTERN ]; then
  echo "Please enter a search pattern" && exit 1
fi

if [ -f $DOMAIN_FILE ]; then
  echo "Domain file is $DOMAIN_FILE"
 # for domain in `cat $DOMAIN_FILE`; do
    #awk -v search="$SEARCH_PATTERN" '/^search/ {counter=counter+1; printf "Count=%s\n",counter;}' $DOMAIN_FILE
    awk "/^$SEARCH_PATTERN/ {counter=counter+1; printf "Count=%s",counter;}" $DOMAIN_FILE
  
 # done
 else
   echo "File does not exist" && exit 1

fi
