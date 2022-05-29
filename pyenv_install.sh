#!/bin/bash

brew install pyenv

pyenv install --list

PYTHON_GLOBAL_VERSION=3.10.4
pyenv install "${PYTHON_GLOBAL_VERSION}"
pyenv global "${PYTHON_GLOBAL_VERSION}"

echo
echo "Python versions:"
pyenv versions
