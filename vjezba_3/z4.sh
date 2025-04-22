#!/bin/bash

if [ "$#" -ne 1 ]; then
	echo "Potrebno je proslijediti tocno jedan argument."
	exit 1
fi

dir="$1"

if [! -d "$dir" ]; then
	echo "Direktorij '$dir' ne postoji u trenutnom direktoriju."
	exit 1
fi

zip -j svi_zapisi.zip "$dir"/*

echo "Datoteke iz direktorija '$dir' su uspjesno komprimirane u svi_zapisi.zip." 
