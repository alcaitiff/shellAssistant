# shellAssistant
Creates a simple interface to add aliases and functions to your shell and maintain it.

With this you can tell to your shell "learn" and it will learn how to do your common tasks easily

# Download the last build

https://github.com/alcaitiff/shellAssistant/tree/master/build

# Install

```bash
    sudo dpkg -i shellAssistant.deb
```

# Configure

When asked on the post install script.

Define the shell source file. 

Default ${HOME}/.bashrc

If you want to use on more than one shell, just add the line bellow on your shell source file

```bash
    source /usr/local/shellAssistant/include
```

# Use

```bash
    commands - List all available commands
    sourcecode <command> - detail the code for the specified command
    learn [ <function|alias> [ <name> [ <code> ] ] ] - learn a new command
    forget <name> - remove a command
    search <name> - example of alias command to search a package on apt
    remember <name> - example of function command to search a word on history
```

# Examples

```bash
    learn function openIt "xdg-open \"\${1}\" > /dev/null 2>&1 &"
    learn function directory "mkdir -p \"\${1}\" && cd \"\${1}\""
    learn alias install "sudo apt install"
    learn alias turnOff "sudo shutdown -h now"
    learn alias reboot "sudo reboot"
    learn alias remove "sudo apt remove"
```

# Advanced

After learn a function it can be used inside other functions

```bash
    #the function yes_or_no will receive a parameter question and will return zero for y or Y
    #the default value is no, therefore the capitalized N

    learn function yes_or_no "\
        echo \"\${1} [y/N]?\";\
        read V;\
        if [ -z \"\${V}\" ]; then \
            return 1;\
        fi;\
        if [[ \"\${V}\" =~ ^[Yy]\$ ]]; then \
            return 0;\
        else \
            return 1;\
        fi;"

    #Now you can use it inside other functions

    learn function PowerOFF "if yes_or_no \"Are you sure\"; then sudo shutdown -h now;fi;"
```

# FAQ

## What the learn command do?

It creates a file with your command and save it on ${HOME}/.shellAssistant/commands

## May I change it?

Yes

## Can I copy files from a machine to another?

Yes

## I copied the files, but my commands are not working. What I need to do?

Just re-source your shell. 

```bash
    $ source ~/.bashrc
```

## How my commands become available on my shell?

This shell scripts will add a line on your shell source file including all files in directory ${HOME}/.shellAssistant/commands