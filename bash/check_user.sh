#!/bin/bash

USER="frank"

if [[ $(whoami) == $USER ]]; then
  echo "you're $USER"
else
  echo "who are you?"
fi
