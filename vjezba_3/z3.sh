#!/bin/bash

dir = "./screenshots"

brojac=1

for dat in "$dir"/*; do
	if [ -f "$dat" ]; then
	ime=$(basename "$dat")
	novoime="screenshot_${brojac}_$ime"
	mv "$dat" "$dir/$novoime"
	echo "$novoime"
	brojac=$(( brojac + 1 ))
	fi
done
