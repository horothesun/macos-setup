#!/bin/bash

brew install nvm


# HOMEBREW_OPT_DIR: different values between Intel and Apple Silicon (arm64)
if [ "`arch`" = arm64 ]; then
  export HOMEBREW_OPT_DIR=/opt/homebrew/opt
else
  export HOMEBREW_OPT_DIR=/usr/local/opt
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$HOMEBREW_OPT_DIR/nvm/nvm.sh" ] && . "$HOMEBREW_OPT_DIR/nvm/nvm.sh"
[ -s "$HOMEBREW_OPT_DIR/nvm/etc/bash_completion.d/nvm" ] && . "$HOMEBREW_OPT_DIR/nvm/etc/bash_completion.d/nvm"

nvm install --lts --default

echo
echo 'Node.js versions:'
nvm list
