#!/bin/bash
# Variable and constant declaration
curDir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
mkdir -p ~/.bin
if [ ! -f ~/.bin/universe ]; then
	chmod +x $curDir/universe
	ln -sf $curDir/universe ~/.bin/
	echo "Universe is ready to use."
else
	echo "Universe is already setup."
	echo
	echo "Do you want to uninstall it? [y/n]"
	read -r answer
	while [ $answer != 'n' ] && [ $answer != 'y' ]
	do
		echo "Answer not recognized. Please type 'y' (yes) or 'n' (no)."
		read -r answer
	done
	if [ $answer = 'y' ]
	then
		rm  ~/.bin/universe
	fi
fi
