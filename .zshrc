ZSH_DISABLE_COMPFIX="true"
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"

plugins=(
    colored-man-pages copydir copyfile
    fd git-prompt sudo ubuntu
    zsh-autosuggestions zsh-completions zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

alias l='ll -Gog'
alias less='less -r'
alias ll='ls -lAh'
alias ls='ls -F --color=auto --show-control-chars --time-style=locale'
alias v='vim'
alias whence='type -a'

# prompt_context(){}

# check if NVM exists. If you don't use NVM, you can remove these lines
if [ -d "$HOME/.nvm" ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi

### ZNT's installer added snippet ###
fpath=( "$fpath[@]" "$HOME/.config/znt/zsh-navigation-tools" )
autoload n-aliases n-cd n-env n-functions n-history n-kill n-list n-list-draw n-list-input n-options n-panelize n-help
autoload znt-usetty-wrapper znt-history-widget znt-cd-widget znt-kill-widget
alias naliases=n-aliases ncd=n-cd nenv=n-env nfunctions=n-functions nhistory=n-history
alias nkill=n-kill noptions=n-options npanelize=n-panelize nhelp=n-help
zle -N znt-history-widget
bindkey '^R' znt-history-widget
setopt AUTO_PUSHD HIST_IGNORE_DUPS PUSHD_IGNORE_DUPS
zstyle ':completion::complete:n-kill::bits' matcher 'r:|=** l:|=*'
### END ###
