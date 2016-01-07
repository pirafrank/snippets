#!/bin/bash

#
# Splitting string by the first occurrence of a delimiter
#

s='id;some text here with possible ; inside'

id="$( cut -d ';' -f 1 <<< "$s" )"; echo "$id"

string="$( cut -d ';' -f 2- <<< "$s" )"; echo "$string"

# you get:
# $ some text here with possible ; inside


#
# But read is even better:
#

IFS=';' read -r id string <<< "$s"

echo "$id"

echo "$string"

# you get:
# $ some text here with possible ; inside
