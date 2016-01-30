#!/bin/sh
binaries=(
  coreutils
  findutils
  gnu-tar
  gnu-sed
  gawk
  gnutls
  gnu-indent # indent source target, beautify code by indent
  gnu-getopt # getopt function to parse args
  bash
  zsh
  zsh-completions
  graphicsmagick # graphic library
  webkit2png # capture website screenshot
  rename
  zopfli # compression library
  ffmpeg --with-faac
  python
#  sshfs
  trash # send it to trash
  node # node.js
  tree
  ack
  hub # command line wrapper for git
  git
  mackup
)

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

echo "installing binaries..."
brew install ${binaries[@]}

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep

# Cleanup
brew cleanup
