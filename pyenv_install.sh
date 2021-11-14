#!/bin/bash

brew install pyenv

pyenv install 3.10.0

pyenv global 3.10.0

echo
echo 'Python versions:'
pyenv version
