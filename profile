alias lec="ssh lec"
alias ec2="ssh ec2"
alias uaccount="ssh uaccount"
alias mysql="mysql -u root -p"
alias ls="ls -pG"
alias nicheknights="ssh nicheknights"

# setting bindkeys for vim mode and kj sequence
bindkey -v
bindkey -M viins 'kj' vi-cmd-mode
bindkey "^R" history-incremental-search-backward 

export PATH=$PATH:"/usr/local/sbin"

##
# Your previous /Users/chasejohnson/.profile file was backed up as /Users/chasejohnson/.profile.macports-saved_2014-04-07_at_18:20:10
##

# MacPorts Installer addition on 2014-04-07_at_18:20:10: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# my personal bin **************************
export PATH="/Users/chase/bin:$PATH"
# export EDITOR=$(which vim)

# setting sudo editor
export SUDO_EDITOR="$(which vim)"

# python stuff *****************************
alias py="$(which python)"
alias ipy="/usr/local/bin/ipython --no-confirm-exit"

# git shortcuts
alias gstat="git status"
alias gadd="git add"
alias gpush="git push -u origin master"

# misc alias 
alias vi="$(which vim)"
alias electron_test="~/crap/electron_test/electron/out/R/Electron.app/Contents/MacOS/Electron"

# docker shortcuts
alias dps="docker ps -a"

# docker functions ***************************
function dkr () {
    ## new docker-machine
    docker-machine start default
    eval "$(docker-machine env default)"
}
# setting docker variables
function chdkr() {
    chrome "http://$(docker-machine ip default):$1"
}

#remove all stopped docker containers
function dkrclean(){
    docker rm $(docker ps -a -q)
}

# removes all untagged images
function dkrmi() {
    docker rmi $(docker images | grep "^<none>" | awk "{print $3}")
}

