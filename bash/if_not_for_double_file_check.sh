#!/bin/bash

if [ ! -f "file1" ] || [ ! -f "file2" ]; then
    echo "error: at least one of the files is missing!"
    exit 1
fi

echo "wow, I have the resources to run!"
