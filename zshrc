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

plugins=(git gitignore pass vim ruby heroku)

source $ZSH/oh-my-zsh.sh

export EDITOR=vim
bindkey -v

#alias dkr='sudo docker'
#alias dkrl='dkr ps -l -q'
alias dl='docker ps -l -q --no-trunc'
docker_cleanup_all() {
    echo 'Cleaning up containers:'
    docker rm `docker ps -a -q --no-trunc`
    echo
    echo 'Cleaning up images:'
    docker rmi `docker images --no-trunc|grep '<none>'|awk '{print $3}'`
}
alias dcleanup=docker_cleanup_all
alias ack='ack-grep'

fpath=($HOME/.zsh/completion $fpath)
compinit
