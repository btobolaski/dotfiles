#!/bin/bash
xcode-select --install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
git submodule update --init
ln -s ~/.dotfiles/bash_profile ~/.bash_profile
ln -s ~/.dotfiles/bashrc ~/.bashrc
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/slate ~/.slate
ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/teamocil ~/.teamocil
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
ln -s ~/.dotfiles/zshrc ~/.zshrc
chsh -s /usr/local/bin/zsh
mkdir -p ~/.ssh/bundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Setup tmux
brew install tmux

mkdir -p ~/.tmux/plugins
# Link this into the directory instead of linking as the directory as tmux-resurrect writes new files into it's plugin directory
ln -s ~/.dotfiles/tmux_plugins/tpm ~/.tmux/plugins/tpm
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
