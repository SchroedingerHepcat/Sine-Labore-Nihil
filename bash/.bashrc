# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

xhost +local:root > /dev/null 2>&1

# Complete sudo with commands
complete -cf sudo

# Set shell options
shopt -s cdspell
shopt -s cmdhist
shopt -s dotglob
shopt -s expand_aliases
shopt -s extglob
shopt -s hostcomplete
shopt -s nocaseglob

# Include the system wide bashrc file
if [ -f /etc/bash.bashrc ]; then
   . /etc/bash.bashrc
fi

###########################################################################
# History Setup
###########################################################################

# Avoid duplicates in the history
export HISTCONTROL=ignoredups:erasedups

# append to the history file, don't overwrite it
shopt -s histappend

# For setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=100000
HISTFILESIZE=2000000

# Save and reload the history after each command
export PROMPT_COMMAND="history -a; history -c; history -r; $PROPMT_COMMAND"

###########################################################################

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

###########################################################################
# Set up command prompt
###########################################################################

# Setup my prompt
PS1='\n\[\033[0;33m\][ \[\033[0;94m\]\w \[\033[0;33m\]]\n\[\033[0;32m\]\t \[\033[0;96m\]\u\[\033[0;93m\]@\[\033[0;36m\]\h \[\033[0;91m\]\$ \[\033[0;0m\]'

###########################################################################

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Use user-defined inputrc file
export INPUTRC=~/.inputrc


# Because opensuse tries to keep them out, add sbins to my path
export PATH=$HOME/scripts:$PATH
export PATH=$PATH:/bin
export PATH=$PATH:/sbin
export PATH=$PATH:/usr/sbin

# Define terminal as 256 color xterm
export TERM=xterm-256color

# Define python startup file
export PYTHONSTARTUP="$HOME/.pythonrc"
