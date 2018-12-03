# shellAssistant
Creates a simple interface to add aliases and functions to your shell and maintain it.

# Download the last build

https://github.com/alcaitiff/shellAssistant/tree/master/build

# Install

    sudo dpkg -i shellAssistant.deb

# Configure

When asked on the post install script.

Define the shell source file. 

Default ${HOME}/.bashrc

If you want to use on more than one shell, just add the line bellow on your shell source file

    source /usr/local/shellAssistant/include

# Use

    commands - List all available commands
    sourcecode <command> - detail the code for the specified command
    learn [ <function|alias> [ <name> [ <code> ] ] ] - learn a new command
    forget <name> - remove a command
    search <name> - example of alias command to search a package on apt
    remember <name> - example of function command to search a word on history

# Examples

    learn function openIt "xdg-open \"\${1}\" > /dev/null 2>&1 &"
    learn function directory "mkdir -p \"\${1}\" && cd \"\${1}\""
    learn alias install "sudo apt install"
    learn alias turnOff "sudo shutdown -h now"
    learn alias reboot "sudo reboot"
    learn alias remove "sudo apt remove"

# Advanced

After learn a function it can be used inside other functions

    #the function yes_or_no will receive a parameter question and will return zero for y or Y
    #the default value is no, therefore the capitalized N

    learn function yes_or_no "echo \"\${1} [y/N]?\";read V;if [ -z \"\${V}\" ];then return 1;fi;if [[ \"\${V}\" =~ ^[Yy]\$ ]];then return 0;else return 1;fi;"

    #Now you can use it inside other functions

    learn function PowerOFF "if yes_or_no \"Are you sure\"; then sudo shutdown -h now;fi;"