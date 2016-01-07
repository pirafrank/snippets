#!/bin/bash

# Input prompt using osascript

# How to prompt a user for a name to create a folder (bash | shell script)?

# The echo and read commands both work via a text interface, such as the 
# Terminal window the script is running in. If you run a script in an OS X 
# Service, there's no Terminal-like interface, so neither command does anything 
# useful. (I don't know about Keyboard Maestro, but I assume it's similar) .
# The simplest way to interact from a situation like this is generally to use 
# AppleScript via the osascript command:


name="$(osascript -e 'Tell application "System Events" to display dialog "Enter the project name:" default answer ""' -e 'text returned of result' 2>/dev/null)"

if [ $? -ne 0 ]; then
    # The user pressed Cancel
    exit 1 # exit with an error status
elif [ -z "$name" ]; then
    # The user left the project name blank
    osascript -e 'Tell application "System Events" to display alert "You must enter a project name; cancelling..." as warning'
    exit 1 # exit with an error status
fi

mkdir -p ~/Desktop/$name
mkdir -p ~/Desktop/$name/subfolder1
mkdir -p ~/Desktop/$name/subfolder2
