#!/bin/bash

echo "-------------------------------"
echo "Hello $USER"
echo "The current time is: "
echo "$(date)"
echo "-------------------------------"

read -p "Guess the correct colour: " guess
guess=$(echo "$guess" | tr '[:upper:]' '[:lower:]' | tr -d ' ')

if [ "$guess" == "red" ]
then
        echo "Correct Answer!!!"
	echo "-------------------------------"
        exit 10
else
        echo "Please try again..."
        echo "-------------------------------"
	exit 11
fi

