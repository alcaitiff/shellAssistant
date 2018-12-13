#!/bin/bash
# Description: List Shell Assistant Commands
function commands {
  . /usr/local/shellAssistant/lib
  printf -v pad %30s
  for w in $(ls -l -C1 ${SHELL_ASSISTANT_HOME})
  do
    COMMANDLINE=$(echo ${w} | sed -e "s/\.sh$//g")${pad}
    DESCRIPTION=$(grep -i "^#.*Description:" ${SHELL_ASSISTANT_HOME}/${w} | sed -e "s/^#.*Description\:\(.*\)$/ \1/g")
    echo "${B}${COMMANDLINE:0:30}${D} ${DESCRIPTION}"
  done
  echo -e "\n${G}Type ${B}sourcecode NAME${G} to see the command code${D}"
}