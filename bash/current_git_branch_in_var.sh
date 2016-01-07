#!/bin/bash

CURRENT_BRANCH=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
