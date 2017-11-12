#!/bin/bash
#
# Install set node.js version on Raspberry Pi gen. 0 and 1.
#
# Description:
# The script put node files in /opt/nodejs.
# Installation is non destructive and multiple versions can coexist,
# just edit symlinks to /usr/local/ directories and files.
#
# Author:
# Francesco Pira (inbox[at]fpira[dot]com)
#


VERSION=v6.12.0

# Creates directory for downloads, and downloads node
mkdir -p /tmp/nodejs
cd /tmp/nodejs
wget https://nodejs.org/dist/$VERSION/node-$VERSION-linux-armv6l.tar.gz
tar -xzf node-$VERSION-linux-armv6l.tar.gz

# Creating the parent folder for nodejs installation
mkdir -p /opt/nodejs/$VERSION
mv node-$VERSION-linux-armv6l/* /opt/nodejs/$VERSION/

# Cleaning up tmp dir
rm -rf /tmp/nodejs

# Removing symlinks to existing installation
#rm /usr/local/bin/node
#rm /usr/local/bin/npm
#rm /usr/local/include/node
#rm /usr/local/lib/node_modules
#rm /usr/local/share/doc/node
#rm /usr/local/share/man/man1/node.1
#rm /usr/local/share/systemtap/tapset/node.stp
rm /usr/bin/node
rm /usr/bin/npm
rm /usr/include/node
rm /usr/lib/node_modules
rm /usr/share/doc/node
rm /usr/share/man/man1/node.1
rm /usr/share/systemtap/tapset/node.stp

# Create symlinks to node and npm
#ln -s /opt/nodejs/$VERSION/bin/node /usr/local/bin/node
#ln -s /opt/nodejs/$VERSION/bin/npm /usr/local/bin/npm
#ln -s /opt/nodejs/$VERSION/include/node /usr/local/include/node
#ln -s /opt/nodejs/$VERSION/lib/node_modules /usr/local/lib/node_modules
#ln -s /opt/nodejs/$VERSION/share/doc/node /usr/local/share/doc/node
#ln -s /opt/nodejs/$VERSION/share/man/man1/node.1 /usr/local/share/man/man1/node.1
#ln -s /opt/nodejs/$VERSION/share/systemtap/tapset/node.stp /usr/local/share/systemtap/tapset/node.stp
ln -s /opt/nodejs/$VERSION/bin/node /usr/bin/node
ln -s /opt/nodejs/$VERSION/bin/npm /usr/bin/npm
ln -s /opt/nodejs/$VERSION/include/node /usr/include/node
ln -s /opt/nodejs/$VERSION/lib/node_modules /usr/lib/node_modules
ln -s /opt/nodejs/$VERSION/share/doc/node /usr/share/doc/node
ln -s /opt/nodejs/$VERSION/share/man/man1/node.1 /usr/share/man/man1/node.1
ln -s /opt/nodejs/$VERSION/share/systemtap/tapset/node.stp /usr/share/systemtap/tapset/node.stp
