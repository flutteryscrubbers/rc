#!/bin/bash

# Base16 Shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

# Powerline Fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

# Oh My Zsh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

