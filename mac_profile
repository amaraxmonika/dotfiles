alias lec="ssh lec"
alias ec2="ssh ec2"
alias uaccount="ssh uaccount"
alias mysql="mysql -u root -p"
alias ls="ls -pG"
alias chrome="open /Applications/Google\ Chrome.app"
alias cc="gcc"
#export PS1="\e[37;40m\s:\W \e[31;40m$ \e[0m"
alias nicheknights="ssh nicheknights"

# setting bindkeys for vim mode and kj sequence
bindkey -v
bindkey -M viins 'kj' vi-cmd-mode
bindkey "^R" history-incremental-search-backward 

#export PS1="\[\e[37;40m\]\s:\W \[\e[31;40m\]$ \[\e[0m\]"

export PATH=$PATH:"/usr/local/lib/mongodb/bin:/Users/chasejohnson/android-sdks/tools:/Users/chasejohnson/android-sdks/platform-tools"

##
# Your previous /Users/chasejohnson/.profile file was backed up as /Users/chasejohnson/.profile.macports-saved_2014-04-07_at_18:20:10
##

# MacPorts Installer addition on 2014-04-07_at_18:20:10: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH=/Users/chasejohnson/bin:$PATH

# adding python 
PYTHONSTARTUP=$HOME/.pythonrc

# adding site-packages 
export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python2.7/site-packages


# python shortcut
alias py=/usr/bin/python
# docker 
function dkr () {
    echo "starting docker stuff:"
    boot2docker start
    boot2docker shellinit
    eval "$(boot2docker shellinit)"
}
# setting docker variables
#eval "$(boot2docker shellinit)"
function chdkr() {
    chrome "http://$(boot2docker ip):$1"
}
