#!/bin/bash

DIR1="/home/francesco/copy-mnt"
if [ "$(ls $DIR1)" ]; then
        echo "dir not empty"
else
        echo "dir empty"
fi
