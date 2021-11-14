#!/bin/bash

brew install nvm

nvm install --lts --default

echo
echo 'Node.js version'
nvm version
