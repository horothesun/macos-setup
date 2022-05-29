#!/bin/bash

# formulae
FORMULAE_FILE="formulae"
echo "Installing the following formulae:"
cat "${FORMULAE_FILE}"
echo
brew install "$(cat "${FORMULAE_FILE}")"


# fonts
brew tap homebrew/cask-fonts
FONTS_FILE="fonts"
echo "Installing the following fonts:"
cat "${FONTS_FILE}"
echo
brew install "$(cat "${FONTS_FILE}")"


# casks
CASKS_FILE="casks"
echo "Installing the following casks:"
cat "${CASKS_FILE}"
echo
brew install --cask "$(cat "${CASKS_FILE}")"


# Intel-only casks
if [[ "$(arch)" != arm64 ]]; then
  INTEL_ONLY_CASKS_FILE="intel_only_casks"
  echo "Installing the following Intel-only casks:"
  cat "${INTEL_ONLY_CASKS_FILE}"
  echo
  brew install --cask "$(cat "${INTEL_ONLY_CASKS_FILE}")"
fi


# git global config
./git_global_configs.sh
