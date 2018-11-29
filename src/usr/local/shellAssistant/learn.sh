#!/bin/bash
function learn {
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
		command=$(askit "What it means?");
	else
		command=${3};
	fi

	if (( ${commandType} )); then
		echo -e "\nAlias mode\nFor functions use 'learn function name \"code\"'"
		echo -e "alias ${name}=\"${command}\"" > ${SHELL_ASSISTANT_HOME}/${name}.sh
	else
		echo -e "\nFunction mode\nFor alias use 'learn alias name \"command\"'"
		echo -e "function ${name} { \n${command} ; \n}" > ${SHELL_ASSISTANT_HOME}/${name}.sh
	fi

	echo -e "\nEx:"
	echo -e "\nlearn function say \"echo '\${1}'\""
	echo -e "\nlearn alias say \"echo\""

	echo -e "\n${B}${name} ${D}now means \"${B}${command}${D}\""

	section "${D}Command ${G}${name}${D} learned"

	source ${SOURCE_FILE}

}
