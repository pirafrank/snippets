#!/bin/bash

if [[ $# != 1 ]]; then
    echo "Error: wrong number of arguments"
    echo "Usage:"
    echo "./script.sh <port>"
    exit 1
fi

PORT_NUMBER="$1"

lsof -i tcp:${PORT_NUMBER} | awk 'NR!=1 {print $2}' | xargs kill 
Breakdown of command

# (lsof -i tcp:${PORT_NUMBER}) -- list all processes that is listening on that tcp port
# (awk 'NR!=1 {print $2}') -- ignore first line, print second column of each line
# (xargs kill) -- pass on the results as an argument to kill. There may be several.

# source http://stackoverflow.com/questions/5043808/how-to-find-processes-based-on-port-and-kill-them-all 
