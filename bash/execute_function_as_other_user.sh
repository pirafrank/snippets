#!/bin/bash

function function1 {
   echo $(whoami)
}

export -f function1
su francesco -c "bash -c function1"
exit 0
