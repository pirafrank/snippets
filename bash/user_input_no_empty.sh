#!/bin/bash

COMPUTER_NAME=""

echo -n "Insert choosen name for this computer and press [enter]: "
read COMPUTER_NAME

while [[ $COMPUTER_NAME == "" ]]; do
    echo -n "Insert choosen name for this computer and press [enter]: "
    read COMPUTER_NAME
done
