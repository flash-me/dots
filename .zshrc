ZSH_DISABLE_COMPFIX="true"
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"

plugins=(git colorize colored-man-pages sudo archlinux zsh-autosuggestions zsh-completions)

source $ZSH/oh-my-zsh.sh

alias l='ll -Gog'
alias less='less -r'
alias ll='ls -lAh'
alias ls='ls -F --color=auto --show-control-chars --time-style=locale'
alias v='vim'
alias whence='type -a'

prompt_context(){}
source $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# check if NVM exists. If you don't use NVM, you can remove these lines
if [ -d "$HOME/.nvm" ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi
