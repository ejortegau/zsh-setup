#!/bin/bash
set -e
mkdir $HOME/git
cd $HOME/git
git clone git@github.com:ejortegau/dotfiles.git
cd
ln -s $HOME/git/dotfiles $HOME/

if test -f $HOME/.zhrc ; then
    echo Moving previous .zshrc to .zshrc.backup
    mv $HOME/.zshrc $HOME/.zshrc.backup
fi
ln -sf $HOME/git/dotfiles/dotfiles/.zshrc $HOME
