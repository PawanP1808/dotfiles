export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

ZSH_DISABLE_COMPFIX="true"

source $ZSH/oh-my-zsh.sh


alias localBranchDelete='git branch | grep -v "master" | xargs git branch -D '


# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh
if [ -e /Users/pawan/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/pawan/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer




[[ -f /opt/dev/sh/chruby/chruby.sh ]] && type chruby >/dev/null 2>&1 || chruby () { source /opt/dev/sh/chruby/chruby.sh; chruby "$@"; }


[[ -x /usr/local/bin/brew ]] && eval $(/usr/local/bin/brew shellenv)

[[ -x /opt/homebrew/bin/brew ]] && eval $(/opt/homebrew/bin/brew shellenv)