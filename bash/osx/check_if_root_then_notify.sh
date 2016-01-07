#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   /usr/bin/osascript -e 'display notification "Error. Are you root?" with title "TEST"'
   exit 1
else 
     /usr/bin/osascript -e 'display notification "Success! Running as root!" with title "TEST"'
fi
