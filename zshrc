ZSH=$HOME/.oh-my-zsh
ZSH_THEME="bureau"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

plugins=(git pass vim ruby docker)

source $ZSH/oh-my-zsh.sh

export EDITOR=vim
bindkey -v

alias dkr='sudo docker'
alias dkrl='dkr ps -l -q'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
