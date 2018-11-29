#!/bin/bash
function forget {
  COMMAND_FILE="${SHELL_ASSISTANT_HOME}/${1}.sh"
  if [ -f  "${COMMAND_FILE}" ]; then
  rm ${SHELL_ASSISTANT_HOME}/${1}.sh
  else
    echo "${R}Command ${1} not found${D}"
  fi
  source ${SOURCE_FILE}
}