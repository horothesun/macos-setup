#!/bin/bash

brew install pass

brew tap amar1729/formulae
brew install browserpass

PREFIX='/usr/local/opt/browserpass' make hosts-chrome-user -f '/usr/local/opt/browserpass/lib/browserpass/Makefile'
