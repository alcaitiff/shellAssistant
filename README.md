# shellAssistant
Creates a simple interface to add aliases and functions to your shell and maintain it.

#Download the last build

https://github.com/alcaitiff/shellAssistant/tree/master/build

#Install

    sudo dpkg -i shellAssistant.deb

#Configure

Define the shell source file. 
Default ${HOME}/.bashrc

#Use

    commands - List all available commands
    sourcecode <command> - detail the code for the specified command
    learn [ <function|alias> [ <name> [ <code> ] ] ] - learn a new command
    forget <name> - remove a command
    search <name> - example of alias command to search a package on apt
    remember <name> - example of function command to search a word on history
