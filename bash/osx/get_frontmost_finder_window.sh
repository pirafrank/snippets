#!/bin/bash

#################### solution #1

osascript -e 'tell application "Finder" to get the POSIX path of (target of front window as alias)'

#################### solution #2

function ff { osascript -e 'tell application "Finder"'\
 -e "if (${1-1} <= (count Finder windows)) then"\
 -e "get POSIX path of (target of window ${1-1} as alias)"\
 -e 'else' -e 'get POSIX path of (desktop as alias)'\
 -e 'end if' -e 'end tell'; };\

function cdff { pushd "`ff $@`"; };
