#!/bin/bash

brew install rbenv

rbenv install --list-all

function ruby_latest_stable_v() {
  RUBY_VERSION_PREFIX="$1"
  rbenv install --list-all | \
    grep -v "-" | \
    grep -v "[a-z]" | \
    xargs -n 1 | \
    grep "^${RUBY_VERSION_PREFIX}" | \
    tail -1
}

rbenv install "$(ruby_latest_stable_v 2)"

RUBY_LATEST_STABLE_V3=$(ruby_latest_stable_v 3)
rbenv install "${RUBY_LATEST_STABLE_V3}"
rbenv global "${RUBY_LATEST_STABLE_V3}"

echo
echo "Ruby versions:"
rbenv versions
