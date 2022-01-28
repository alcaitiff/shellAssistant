# Description: Change a command
function change { 
  gedit -s "${SHELL_ASSISTANT_HOME}/${1}.sh" && resource;
}
