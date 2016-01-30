#!/bin/sh
# fonts
fonts=(
  font-m-plus
  font-clear-sans
  font-roboto
  font-source-code-pro
)

# install fonts
echo "installing fonts..."
brew tap caskroom/fonts
brew cask install ${fonts[@]}

