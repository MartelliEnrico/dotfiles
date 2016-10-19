#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Make ZSH the default shell environment
chsh -s $(which zsh)

# Install global Composer packages
composer global require update

#Install global npm packages
npm install -g bower firebase-tools generator-polymer gulp polymer-cli yarn yo

# Install Laravel Valet
valet install

# Set OS X preferences
# We will run this last because this will reload the shell
source .osx

