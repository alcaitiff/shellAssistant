#!/bin/bash
# Description: Learn a new command and open the default editor to write it
function learn-on-editor { 

  . /usr/local/shellAssistant/lib

	if [ -z "$1" ]; then
		if promptyn "Learn as alias"; then
			commandType=1;
		else
			commandType=0;
		fi
	else
		if [ "${1}" = "alias" ]; then
			commandType=1;
		else
			commandType=0;
		fi
	fi

	if [ -z "$2" ]; then
		name=$(askit "What should I learn?");
	else
		name=${2};
	fi

	if [ -z "$3" ]; then
		command="echo 'No code yet'";
	else
		command=${3};
	fi

	if [ -z "$4" ]; then
		description="No description yet";
	else
		description=${4};
	fi

  learn $1 $2 "${command}" "${description}" && change "${2}";
}
