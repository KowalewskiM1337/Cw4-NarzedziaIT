#!/bin/bash

if [[ $1 == "--date" ]]; then
	echo $(date)
fi

if [[ $1 == "-d" ]]; then
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

if [[ $1 == "-l" ]] && [[ $2 == "" ]]; then
        while [ $i -le 100 ]
        do
                touch "log$i.txt"
                echo "log$i.txt" >> "log$i.txt"
                echo "skrypt.sh" >> "log$i.txt"
                echo $(date) >> "log$i.txt"
                i=$(( $i + 1 ))
        done
fi


if [[ $1 == "--logs" ]] && [[ -z "$2" ]]; then
	while [ $i -le "$2" ]
	do
		touch "log$i.txt"
		echo "log$i.txt" >> "log$i.txt"
		echo "skrypt.sh" >> "logs$i.txt"
		echo $(date) >> "logs$i.txt"
		i=$(( $i + 1 ))
	done
fi

if [[ $1 == "-l" ]] && [[ -z "$2" ]]; then
        while [ $i -le "$2" ]
        do
                touch "log$i.txt"
                echo "log$i.txt" >> "log$i.txt"
                echo "skrypt.sh" >> "logs$i.txt"
                echo $(date) >> "logs$i.txt"
                i=$(( $i + 1 ))
        done
fi




if [[ $1 == "--help" ]] || [[ $1 == "-h" ]]; then
	echo "Wszystkie mozliwe opcje wykonania skryptu: "
	echo "--date   (wyswietla dziejsza date)"
	echo "--logs   (tworzy 100 plikow logx.txt)"
	echo "--logs [nr]   (tworzy okreslona liczbe plikow logx.txt)"
	echo "--help   (wyswietla te strone)"
fi


repo_url="https://github.com/KowalewskiM1337/Cw4-NarzedziaIT.git"
clone_dir="repo"

function init_repo() {
	git clone "$repo_url" "$clone_dir"
	export PATH="$PWD/$clone_dir:$PATH"
}






