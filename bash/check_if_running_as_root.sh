#!/bin/bash

if [[ $EUID -ne 0 ]]; then
    echo "Error: you need to run this script with root priviledges"
    exit 1
else
    echo "Running as root..."
fi
