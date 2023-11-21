#!/bin/bash
# Variable and constant declaration
curDir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
mkdir -p ~/.bin
if [ ! -f ~/.bin/universe ]; then
  echo "=> File doesn't exist"
  ln -sf $curDir/universe ~/.bin/
else
	echo "EXIST"
	ln -sf $curDir/universe ~/.bin/
fi
