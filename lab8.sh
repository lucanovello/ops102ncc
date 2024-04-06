#!/bin/bash

echo "----------------------------------------------------------------"

read -p "Enter a file name: " filename
read -p "Enter a search string: " keyword

result=$(grep "$keyword" "$filename")

if [ -n "$result" ]
then
    echo "Searching for \"$keyword\" in \"$filename\""
    echo "$result"
    echo "----------------------------------------------------------------"
    exit 15
else
    echo "Error! I could not find \"$keyword\" in \"$filename\""
    echo "----------------------------------------------------------------"
    exit 20
fi

