#!/bin/bash

##### read one line at a time from output of a command #####

while read -r line
do
    echo "$line"
done < <(find . -type f)

# source
# http://unix.stackexchange.com/questions/52026/bash-how-to-read-one-line-at-a-time-from-output-of-a-command
