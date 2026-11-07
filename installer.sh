#!/bin/bash
set -e

# インストール用のスクリプト

# Clone repository
echo 'Fetch init script'
mkdir -p tmp-for-dotfiles
cd tmp-for-dotfiles
git clone https://github.com/kitakou0313/dotfiles
cd dotfiles

# Copy each files
# If file exists, add on end of file.
echo 'Copy dotfiles'
cat .bashrc >> ~/.bashrc
cat .bash_profile >> ~/.bash_profile
cat .gitconfig >> ~/.gitconfig
cat .tmux.conf >> ~/.tmux.conf
cat config.fish >> ~/.config/fish/config.fish

# herdr の設定を配置 (herdr 本体は別途インストールする)
# TOML は追記すると壊れるので、他のファイルと違い上書きする
echo 'Copy herdr config'
mkdir -p ~/.config/herdr
# 既存の設定が違う内容なら、日時付きの名前で退避してから上書き
if [ -f ~/.config/herdr/config.toml ] && ! cmp -s herdr/config.toml ~/.config/herdr/config.toml; then
  cp ~/.config/herdr/config.toml ~/.config/herdr/config.toml.$(date +%Y%m%d-%H%M%S).bak
fi
cp herdr/config.toml ~/.config/herdr/config.toml

cd ../../
rm -rf tmp-for-dotfiles

echo 'Done'
