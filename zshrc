export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

ZSH_DISABLE_COMPFIX="true"

source $ZSH/oh-my-zsh.sh


alias rt='source ~/.zshrc'
alias zshconfig="code ~/.zshrc"


alias glbd='git branch | grep -v "master" | xargs git branch -D '
