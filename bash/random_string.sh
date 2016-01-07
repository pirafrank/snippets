#!/bin/bash

LENGTH="12"

# generate random string
echo -e "$( cat /dev/random | LC_CTYPE=C tr -dc "[:alpha:]0-9" | head -c $LENGTH )"
