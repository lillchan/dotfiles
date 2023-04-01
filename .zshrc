# oh-my-zsh install
export ZSH="$HOME/.oh-my-zsh"

# plugins
plugins=(git macos colored-man-pages zsh-syntax-highlighting)

# source oh-my-zsh
source $ZSH/oh-my-zsh.sh

# terminal prompt
# https://dev.to/cassidoo/customizing-my-zsh-prompt-3417
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%F{green}%*%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '

# aliases
alias cat=bat
alias glg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cD) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias python=/usr/bin/python3

# disable tldr ssl cert inspection
export TLDR_ALLOW_INSECURE=1

# added by fzf install
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
