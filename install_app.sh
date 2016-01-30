#!/bin/bash
# Apps
apps=(
#  alfred
#  dropbox
  google-chrome  # Chrome not included cause of 1Password Plugin
#  qlcolorcode
#  screenflick
#  slack
#  transmit
#  appcleaner
  firefox
#  hazel
#  qlmarkdown
  seil
#  spotify
#  vagrant
#  arq
  flash
  iterm2
#  qlprettypatch
#  shiori
  sublime-text3
#  virtualbox
  atom
#  flux
#  mailbox
#  qlstephen
#  sketch
#  tower
#  vlc
#  cloudup
#  nvalt
#  quicklook-json
  skype
#  transmission
#  fiddler
#  charles
  google-drive
#  google-earth
#  chromecast
#  cyberduck
  dash
  dashlane
)

# Install homebrew cask
brew install caskroom/cask/brew-cask

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew tap caskroom/homebrew-versions
brew cask install --appdir="/Applications" ${apps[@]}

# cleanup
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*

