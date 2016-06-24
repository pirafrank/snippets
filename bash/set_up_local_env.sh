#!/bin/bash

echo "Setting up the environment..."
mkdir -p ~/.bin
echo "export PATH=\"$PATH:$HOME/.bin\"" >> ~/.bash_profile # OSX
echo "export PATH=\"$PATH:$HOME/.bin\"" >> ~/.bashrc # Linux
source ~/.bash_profile
source ~/.bashrc
