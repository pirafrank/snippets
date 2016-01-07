#!/bin/bash

# number of passed arguments in bash script snippet

# example:
# $ myapp foo bar
# $# -> 2
# $* -> foo bar // array of passed arguments
# $0 -> myapp
# $1 -> foo
# $2 -> bar
# $@ -> foo bar // array of passed arguments

if [[ $# != 1 ]]; then
    echo "Error: wrong number of arguments"
    exit -1
fi

echo "number of arguments is $#"
echo "arguments are $*"
echo "bash script name is $0"
echo "first arg is $1"
echo "second arg is $2"
echo "third arg is $3"

# Positional parameters $1,$2,$3… and their corresponding array representation, count and IFS expansion $@, $#, and $*.
# $- current options set for the shell.
# $$ pid of the current shell (not subshell)
# $_ most recent parameter (or the abs path of the command to start the current shell immediately after startup)
# $IFS the (input) field separator
# $? most recent foreground pipeline exit status
# $! PID of the most recent background command
# $0 name of the shell or shell script
