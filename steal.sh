#!/usr/bin/env bash

FILE_NAME=$1

if [ -z $FILE_NAME ]; then
	echo "Specify a text file"
	exit
fi
EMOJIS_FOUND=$(cat $FILE_NAME | wc -l)

echo "Found $EMOJIS_FOUND emojis in $FILE_NAME"
for XD in $(cat $FILE_NAME)
do
	FILE_XD=${XD%????}
	LOL=$(basename $FILE_XD)
	echo "Downloading $XD"
	curl -so "$LOL" "$XD"

done


