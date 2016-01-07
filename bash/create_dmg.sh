#!/bin/bash

LABEL="WhatYouWantTheDiskToBeNamed"
PATH="/path/to/the/folder/you/want/to/create"
IMAGE_NAME="output"

hdiutil create -volname $LABEL -srcfolder $PATH -ov -format UDZO $IMAGE_NAME.dmg
