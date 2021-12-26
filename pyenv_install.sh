#!/bin/bash

brew install pyenv

pyenv install 3.10.1

pyenv global 3.10.1

echo
echo 'Python versions:'
pyenv version
