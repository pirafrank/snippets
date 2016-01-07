#!/bin/bash

# find substring in string passed as arguments

LIST="$1"
PATTERN="$2"

if echo "$LIST" | grep -q "$PATTERN"; then
    echo "matched";
else
    echo "no match";
fi
