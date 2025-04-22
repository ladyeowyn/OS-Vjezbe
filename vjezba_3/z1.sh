#!/bin/bash

if [ "$#" -ne 2 ]; then
	echo "Moraju biti tocno 2 argumenta"
	exit 1
fi

direktorij="$1"
ekstenzija="$2"
nadjeno=0

if [ ! -d "$directory" ]; then
	echo "Prvi argument mora biti valjani direktorij"
	exit 1
fi

for file in "$directory"/*; do
	if [ -f "$file"] && [[ "$file" == *"$extension"]]; then
	basename "$file"
	nadjeno=1
	fi
done

if [ "$nadjeno" -eq 0 ]; then
	echo "Nisu nadjene datoteke sa $ekstenzija"
fi
