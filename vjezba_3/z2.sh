#!/bin/bash

if [ "$#" -ne 1 ]; then
	echo "Potrebno je proslijediti točno 1 argument."
	exit 1
fi

if ! [[ "$1" =~ ^[0-9]+$ ]]; then
	echo "Argument mora biti broj."
	exit 1
fi

if [ "$1" -lt 1 ] || [ "$1" -gt 10 ]; then
	echo "Broj mora biti izmedu 1 i 10."
	exit 1
fi

for ((i=1; i<=$1; i++)); do
	echo "$i" >>brojevi.txt
done

echo "Datoteka brojevi.txt je stvorena sa brojevima od 1 do $1."
