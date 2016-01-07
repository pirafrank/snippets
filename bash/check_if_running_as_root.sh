#!/bin/bash

if [[ $EUID -ne 0 ]]; then
    echo "no root priviledges"
    exit 1
else 
    echo "running as root"
fi
