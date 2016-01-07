#!/bin/bash

# This is a useful one-line script to give you the full directory name of the running script, no matter where it is being called from

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo $DIR
