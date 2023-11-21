#!/bin/bash
# Variable and constant declaration
curDir=$(dirname "$(realpath "$0")")
shHandled=("zsh" "bash")
activeSh=$(basename $SHELL)
## Color
colorOff='\033[0m'
boldGreen='\033[1;32m'
boldRed='\033[1;31m'
boldWhite='\033[1;37m'
boldYellow='\033[1;33m'


# Executable
if [ ! -f ~/.bin/universe ] || [ ! -e ~/.bin/universe ]
then
	echo -e "${boldWhite}Installation steps:${colorOff}"
	mkdir -p ~/.bin
	chmod +x $curDir/universe
	ln -sf $curDir/universe ~/.bin/
	echo -e "1. Setting up the command: ${boldGreen}Done${colorOff}"
	if [ $(echo ${shHandled[@]} | grep -ow $activeSh | wc -w) != 0 ]
	then
		$curDir/universe link $activeSh &> /dev/null
		echo -e "2. Setting up the active shell configuration file (${boldWhite}$activeSh${colorOff}): ${boldGreen}Done${colorOff}"
	else
		echo -e "2. Setting up the active shell configuration file (${boldWhite}$activeSh${colorOff}): ${boldYellow}Skipped${colorOff}"
		echo -e "   ${boldWhite}Info:${colorOff} No configuration file available for this shell."
	fi
	echo
	echo -e "${boldGreen}Universe is setup.${colorOff}"
	echo
	echo -e "${boldWhite}What's next?${colorOff}"
	if [ $(echo ${shHandled[@]} | grep -ow $activeSh | wc -w) != 0 ]
	then
		echo -e "Log into a new shell session and enjoy ${boldWhite}Universe${colorOff}."
	else
		echo -e "1. Add this line ${boldWhite}'export PATH=\"\$PATH:\$HOME/.bin\"'${colorOff} to your active shell configuration file;"
		echo -e "2. Log into a new shell session and enjoy ${boldWhite}Universe${colorOff}."
	fi
else
	echo -e "${boldYellow}Warning:${colorOff} ${boldWhite}Universe${colorOff} is already setup."
	echo
	echo "Do you want to uninstall it? [y/n]"
	read -r answer
	while [ $answer != 'n' ] && [ $answer != 'y' ]
	do
		echo -e "${boldRed}Error:${colorOff} Answer not recognized. Please type 'y' (yes) or 'n' (no)."
		read -r answer
	done
	if [ $answer = 'y' ]
	then
		rm  ~/.bin/universe
		echo
		echo -e "${boldGreen}Universe is uninstalled.${colorOff}"
	fi
fi
