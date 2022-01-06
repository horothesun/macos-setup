#!/bin/bash

brew install pass
brew install amar1729/formulae/browserpass

# Reference: https://github.com/browserpass/browserpass-native#configure-browsers
export PREFIX=/usr/local/opt/browserpass
echo hosts-chrome-user hosts-chromium-user hosts-brave-user hosts-firefox-user \
  | xargs make -f $PREFIX/lib/browserpass/Makefile
