#!/bin/bash

# credits to http://www.cyberciti.biz

genpasswd() {
    local l=$1
        [ "$l" == "" ] && l=20
        tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${l} | xargs
}

genpasswd()
