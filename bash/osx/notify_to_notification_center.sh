#!/bin/bash

VAR="banana"
TITLE="hello, I'm Title!"
/usr/bin/osascript -e 'display notification "'"variable content is $VAR"'" with title "'"$TITLE"'"'

/usr/bin/osascript -e 'display notification "Backup completed." with title "User Backup daemon"'
