# vim: set filetype=sh :
#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [[ $(uname -s) =~ ^CYGWIN ]]; then
    unset MAILCHECK
fi

# Pretty colours/preserve root
alias rm='rm -Iv --preserve-root'
alias mv='mv -iv'
alias cp='cp -iv'
alias ln='ln -i'
alias ls='ls --color=auto'
alias ll='ls --color=auto -al'
alias lsd='ls --color=auto -ald */'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias grep='grep --color=auto -n'
alias fgrep='fgrep --color=auto -n'
alias egrep='egrep --color=auto -n'
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias nano="nano -w"                      # disable wrapping
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e" # Search for process
alias hwsensors='watch -tn1 "lscpu | grep MHz; printf '\n\n'; sensors"' # HW info
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME' # dotfiles git alias

# Create a new directory and enter it
function mkd() {
	mkdir -p "$@" && cd "$@"
}

# Clone git repo into current directory, while keeping contents
function gclone() {
    git init .
    git remote add -t \* -f origin "$1"
    git checkout master
}

# PgUp/PgDn autocomplete current line
if [[ $- == *i* ]]
then
    bind '"\e[5~": history-search-backward'
    bind '"\e[6~": history-search-forward'
fi

#export PS1='[\W]\$ '
export PS1="\[\033[35m\]\t\[\033[m\]-\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "

alias ec='emacsclient -n -c' # Opens emacs in gui
alias ect='emacsclient -t'   # Opens emacs inside terminal

# Share bash command line history among all open terminals
export HISTCONTROL=ignoreboth:erasedups  # ignore duplicate entries
export HISTSIZE=20000                    # big history
export HISTFILESIZE=20000
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# Some colour presets
export black="\[\033[0;38;5;0m\]"
export red="\[\033[0;38;5;1m\]"
export orange="\[\033[0;38;5;130m\]"
export green="\[\033[0;38;5;2m\]"
export yellow="\[\033[0;38;5;3m\]"
export blue="\[\033[0;38;5;4m\]"
export bblue="\[\033[0;38;5;12m\]"
export magenta="\[\033[0;38;5;55m\]"
export cyan="\[\033[0;38;5;6m\]"
export white="\[\033[0;38;5;7m\]"
export coldblue="\[\033[0;38;5;33m\]"
export smoothblue="\[\033[0;38;5;111m\]"
export iceblue="\[\033[0;38;5;45m\]"
export turqoise="\[\033[0;38;5;50m\]"
export smoothgreen="\[\033[0;38;5;42m\]"
export custom="\[\033[0;38;5;23m\]"
export custom2="\[\033[0;38;5;79m\]"

# set some environment stuff
# fix typos
shopt -s cdspell
# save hash for faster ls
shopt -s checkhash
# adjust window size
shopt -s checkwinsize
# no paste command completion wait for CR
shopt -s no_empty_cmd_completion
# append history & allow edits on mistakes
shopt -s histappend histreedit
# > won't clobber override with >|
set -o noclobber

# perlbrew home folder setup
if [[ $(hostname) == "perl-dev" ]]; then
    if [ -f $HOME/perl5/perlbrew/etc/bashrc ]; then
	source $HOME/perl5/perlbrew/etc/bashrc
    fi
fi

