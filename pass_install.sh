#!/bin/bash

brew install --yes pass
brew install --yes amar1729/formulae/browserpass

# PREFIX: different values between Intel and Apple Silicon (arm64)
PREFIX=$(brew --prefix)

# Reference: https://github.com/browserpass/browserpass-native#configure-browsers
make -f "${PREFIX}/lib/browserpass/Makefile" \
  "hosts-chrome-user" \
  "hosts-chromium-user" \
  "hosts-brave-user" \
  "hosts-firefox-user"
