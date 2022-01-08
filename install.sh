#!/bin/bash

# basics
BASICS_FILE=basics
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


# Intel-only casks
if [ "`arch`" != arm64 ]; then
  INTEL_ONLY_CASKS_FILE=intel_only_casks
  echo "Installing the following Intel-only casks:"
  cat $INTEL_ONLY_CASKS_FILE
  echo
  cat $INTEL_ONLY_CASKS_FILE | xargs brew install --cask
fi


# git global config
./git_global_configs.sh
