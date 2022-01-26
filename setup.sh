#!/usr/bin/env bash
if [ -d ~/.oh-my-zsh ]; then
	echo "oh-my-zsh is installed"
 else
 	sh ./ohmy.sh
fi

ln -sf ~/dotfiles/zshrc ~/.zshrc
git config --global alias.l "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global alias.st status

source ~/.zshrc

# Install minidev from local (if available) or remote
if [ -f /opt/dev/dev.sh ]; then
    source /opt/dev/dev.sh
elif [ -f ~/src/github.com/burke/minidev/dev.sh ]; then
    source ~/src/github.com/burke/minidev/dev.sh
fi