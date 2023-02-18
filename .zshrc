# oh-my-zsh install
export ZSH="/Users/lillian/.oh-my-zsh"

# plugins
plugins=(git zsh-syntax-highlighting)

# source oh-my-zsh
source $ZSH/oh-my-zsh.sh

# aliases
alias cat=bat
alias glg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cD) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias python=/usr/bin/python3

# disable tldr ssl cert inspection
export TLDR_ALLOW_INSECURE=1

# added by fzf install
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
