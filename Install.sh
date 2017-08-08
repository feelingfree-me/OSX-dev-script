#!/usr/bin/env bash

# @Author: feelingfree
# @Date:   2016-08-18 16:16:53
# @Last Modified by:   Feelingfree
# @Last Modified time: 2017-01-09 12:14:06

# install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install wget


# Download  mini conda installer
wget https://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh

# Install mini conda
bash Miniconda3-latest-MacOSX-x86_64.sh

# remove installer
rm Miniconda3-latest-MacOSX-x86_64.sh


# remove and create link python3
brew unlink python3
brew link python3

# install java
brew cask install java

# install golang
brew install go

# install sublime-text-3
brew cask install sublime-text

# Create subl command line
ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

# Build script
sudo rm /usr/local/bin/sublime-terminal
cp ./Resource/sublime-terminal /usr/local/bin/sublime-terminal
sudo chmod u+x /usr/local/bin/sublime-terminal

# Install sublime config
sudo rm -r ~/Library/Application\ Support/Sublime\ Text\ 3/
cp -r ./Resource/Sublime\ Text\ 3/ ~/Library/Application\ Support/Sublime\ Text\ 3/


# Reload bash_profile
source ~/.bash_profile

# Install Python package
conda install numpy matplotlib
