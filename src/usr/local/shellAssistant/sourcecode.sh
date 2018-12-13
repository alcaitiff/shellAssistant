#!/bin/bash
# Description: Show the command source code
function sourcecode {
  COMMAND_FILE="${SHELL_ASSISTANT_HOME}/${1}.sh"
  if [ -f  "${COMMAND_FILE}" ]; then
    cat "${COMMAND_FILE}"
    echo -e "\n"
  else
    echo "${R}Command ${1} not found${D}"
  fi
}