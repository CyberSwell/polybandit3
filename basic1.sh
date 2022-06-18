#!/bin/bash

basic1Password="basic1password"
echo $USER_ID
echo $currentDate
echo $newPass
echo $basic1Password

export BASIC1_HASH=$(echo -n "$USER_ID"+"$currentDate"+"$newPass"+"$basic1Password" | md5sum)

## create static directories
echo $userName
cd /home/$userName
mkdir "basic1"
cat $BASIC1_HASH > basic1/inhere.txt

echo "*"
echo "*"
echo "*"
echo "Please change to the 'basic1' directory and display contents of the one file you find there." > basic1/README
echo "This will be the password for this level " >> basic1/README
