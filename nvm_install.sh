#!/bin/bash

brew install nvm

# HOMEBREW_OPT_DIR: different values between Intel and Apple Silicon (arm64)
HOMEBREW_OPT_DIR="$(brew --prefix)/opt"

# Initialise nvm
NVM_DIR="${HOME}/.nvm"
export NVM_DIR
# shellcheck disable=SC1091
[[ -s "${HOMEBREW_OPT_DIR}/nvm/nvm.sh" ]] && source "${HOMEBREW_OPT_DIR}/nvm/nvm.sh"

nvm install --lts
nvm alias "default" "lts/*"

echo
echo "Node.js versions:"
nvm list
