#!/usr/bin/env bash
filenum=$(ls | wc -l)
i=1
function guess_filenum {
	read guess
	if [[ $guess -eq $filenum ]]
	then
		echo "Congratulation! you got it!!!"
		echo "List of files are:"
		for f in $(ls)
                
		do
			echo " $i-$f and "
			i=$(( i + 1 ))
		done
	else
		if [[ $guess -gt $filenum ]]
		then
			echo "There is less... try again and press Enter :"
			guess_filenum
		else
			echo "There is more... try again and press Enter :"
			guess_filenum
		fi
	fi
}
echo "Welcome to the guessing game!"
echo "Guess number of files in the current directory and press Enter :"
guess_filenum
