#!/bin/bash

FILE="/tmp/foo.txt"

if [ ! -f $FILE ]; then
    echo "File not found!"
else
    echo "File exists!"
fi
