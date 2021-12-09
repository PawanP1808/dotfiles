#!/usr/bin/env bash
if [ -d ~/.oh-my-zsh ]; then
	echo "oh-my-zsh is installed"
 else
    echo "installing oh my zsh"
 	sh ./ohmy.sh
fi
echo "DONE "
ln -sf ~/dotfiles/zshrc ~/.zshrc
git config --global alias.l "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global alias.st status
echo "done"