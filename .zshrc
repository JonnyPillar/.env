export ZSH=/Users/jonnypillar/.oh-my-zsh

ssh-add $HOME/.ssh/river_island_github

ZSH_THEME="robbyrussell"

plugins=(git battery git-extras git-flow github ssh-agent sublime sudo thefuck docker)

source $ZSH/oh-my-zsh.sh

export EDITOR=$(which nano)

export GOPATH=/Users/jonnypillar/go
export GOBIN="${GOPATH}/bin"
export PATH=$PATH:$GOPATH/bin:$PATH

export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_INSECURE_REDIRECT=1
export HOMEBREW_CASK_OPTS=--require-sha

eval $(thefuck --alias)

alias dock-ls='docker container ls'

function dock-stop() {
    if [ -n "$1" ]
    then
        docker container stop $1
    else
        echo 'No container ID provided'
    fi
}