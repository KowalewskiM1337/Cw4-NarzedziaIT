#!/bin/bash

if [[ $1 == "--date" ]]; then
	echo $(date)
fi

i=1
if [[ $1 == "--logs" ]] && [[ $2 == "" ]]; then
	while [ $i -le 100 ]
	do
		touch "log$i.txt"
		echo "log$i.txt" >> "log$i.txt"
		echo "skrypt.sh" >> "log$i.txt"
		echo $(date) >> "log$i.txt"
		i=$(( $i + 1 ))
	done
fi
