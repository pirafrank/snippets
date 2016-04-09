#!/bin/bash

# Usage
# use 's' to deploy to stable, use 't' to deploy to test.


#
# Variables
#

CURRENT_BRANCH=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
USER="user"
SERVER="my.server.net"


#
# Script
#

# handling wrong usage
if [[ $# != 1 ]]; then
    echo "Error: wrong number of arguments"
    echo "Usage: ./deploy.sh <option>"
    echo "Options: 's' to deploy to stable, use 't' to deploy to test."
    exit -1
fi

# being sure to be in the right git branch...
if [ $1 == "s" ]; then
    if [ "$CURRENT_BRANCH" != "master" ]; then
        echo "You're not on branch 'master'"
        exit -1
    fi
    REMOTE_PATH="/var/www/website"
elif [ $1 == "t" ]; then
    REMOTE_PATH="/var/www/website-test"
else
    echo "Invalid option!"
    echo "Usage: ./deploy.sh <option>"
    echo "Options: 's' to deploy to stable, use 't' to deploy to test."
fi

# enable this only if you are running a Jekyll website
#echo "Cleaning up..."
#rm -rf _site
#jekyll b

echo "Deploying to $REMOTE_PATH ..."
rsync -avhz -c --delete ./ $USER@$SERVER:"$REMOTE_PATH"
echo "Deployed to $REMOTE_PATH !"
