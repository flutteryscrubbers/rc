#!/bin/bash

# Base16 Shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

# Install NeoVim
brew install neovim

# Copy NVim Config
cp ./init.vim ~/.config/nvim/

# Copy ZSH RC
cp ./zshrc ~

# Install Python Dependency
pip3 install neovim
