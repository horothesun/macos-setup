#!/bin/bash

brew install pass
brew install amar1729/formulae/browserpass

PREFIX='/usr/local/opt/browserpass' make hosts-chrome-user -f '/usr/local/opt/browserpass/lib/browserpass/Makefile'
