#!/bin/bash
set -e

# インストール用のスクリプト

# Clone repository
mkdir tmp-for-dotfiles
cd tmp-for-dotfiles
git clone https://github.com/kitakou0313/dotfiles


# Copy each files
# If file exists, add on end of file.
cat .bashrc >> ~/.bashrc
cat .bash_profile >> ~/.bash_profile
cat .gitconfig >> ~/.gitconfig
cat .tmux.conf >> ~/.tmux.conf

rm -rf tmp-for-dotfiles
