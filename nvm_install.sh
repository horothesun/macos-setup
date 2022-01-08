#!/bin/bash

brew install nvm


# HOMEBREW_OPT_DIR: different values between Intel and Apple Silicon (arm64)
export HOMEBREW_OPT_DIR=$(brew --prefix)/opt

# Initialise nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$HOMEBREW_OPT_DIR/nvm/nvm.sh" ] && . "$HOMEBREW_OPT_DIR/nvm/nvm.sh"

nvm install --lts --default

echo
echo 'Node.js versions:'
nvm list
