#!/bin/bash

brew install rbenv

rbenv install --list-all

rbenv install 2.7.6

RUBY_GLOBAL_VERSION=3.1.2
rbenv install $RUBY_GLOBAL_VERSION
rbenv global $RUBY_GLOBAL_VERSION

echo
echo 'Ruby versions:'
rbenv versions
