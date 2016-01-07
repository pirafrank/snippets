#!/bin/bash

COMMD="rsync" # this is just an example

hash $COMMD 2>/dev/null || { echo >&2 "$COMMD required but it's not installed. Aborting."; exit 1; }
