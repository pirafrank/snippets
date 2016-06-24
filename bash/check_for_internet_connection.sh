#!/bin/bash

# check internet connection
echo "Checking internet connection..."
echo -e "GET http://google.com HTTP/1.0\n\n" | nc google.com 80 > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "Connection is ok..."
else
    echo -e >&2 "$(tput setaf 1)Error: No internet connection.$(tput sgr 0)\n" # red
    exit 1
fi
