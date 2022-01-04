#!/bin/bash

# basics
BASICS_FILE=basic
echo "Installing the following basic brews:"
cat $BASICS_FILE
echo
cat $BASICS_FILE | xargs brew install


# fonts
brew tap homebrew/cask-fonts
FONTS_FILE=fonts
echo "Installing the following fonts:"
cat $FONTS_FILE
echo
cat $FONTS_FILE | xargs brew install


# casks
CASKS_FILE=casks
echo "Installing the following casks:"
cat $CASKS_FILE
echo
cat $CASKS_FILE | xargs brew install --cask


# speedtest
brew tap teamookla/speedtest
brew install speedtest


# git global config
./git_global_configs.sh
