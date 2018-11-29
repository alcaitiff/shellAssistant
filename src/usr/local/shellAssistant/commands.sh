#!/bin/bash
function commands {
  ls -l -C1 ${SHELL_ASSISTANT_HOME} | sed -e "s/\.sh$//g";echo -e "\n${G}Type ${B}sourcecode NAME${G} to see the command code${D}"
}