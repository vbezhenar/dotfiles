#!/usr/bin/env sh
set -o errexit
set -o nounset

mkdir -p "$HOME/.config/git"
ln -s -i ../../.dotfiles/.config/git/ignore "$HOME/.config/git/ignore"
mkdir -p "$HOME/.ssh"
ln -s -i ../.dotfiles/.ssh/9-all.config "$HOME/.ssh/9-all.config"
ln -s -i ../.dotfiles/.ssh/config "$HOME/.ssh/config"
ln -s -i ../.dotfiles/.ssh/known_public_hosts "$HOME/.ssh/known_public_hosts"
mkdir -p "$HOME/.zshfunctions"
ln -s -i ../.dotfiles/.zshfunctions/_docker "$HOME/.zshfunctions/_docker"
ln -s -i ../.dotfiles/.zshfunctions/_kubectl "$HOME/.zshfunctions/_kubectl"
ln -s -i ../.dotfiles/.zshfunctions/mkcd "$HOME/.zshfunctions/mkcd"
ln -s -i ../.dotfiles/.zshfunctions/mkcd "$HOME/.zshfunctions/mkcd"
ln -s -i ../.dotfiles/.zshfunctions/mkcdtmp "$HOME/.zshfunctions/mkcdtmp"
ln -s -i .dotfiles/.gitconfig "$HOME/.gitconfig"
ln -s -i .dotfiles/.vimrc "$HOME/.vimrc"
ln -s -i .dotfiles/.zshrc "$HOME/.zshrc"
