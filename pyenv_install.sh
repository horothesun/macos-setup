#!/bin/bash

brew install pyenv

pyenv install --list

PYTHON_LATEST_STABLE_V3=$(
  pyenv install --list | \
    grep -v "-" | \
    grep -v "[a-z]" | \
    xargs -n 1 | \
    grep "^3" | \
    tail -1
)
pyenv install "${PYTHON_LATEST_STABLE_V3}"
pyenv global "${PYTHON_LATEST_STABLE_V3}"
pyenv rehash

echo
echo "Python versions:"
pyenv versions
