#!/bin/bash

# credits: Matt Harris of JMRI

# determine hard vs. soft float using readelf
HARDFLOAT=`readelf -a /usr/bin/readelf | grep armhf`
if [ -z "$HARDFLOAT" ]; then
ARCH="armv5"
else
ARCH="armv6l"
fi
