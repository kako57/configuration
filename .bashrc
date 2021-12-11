#
# ~/.bashrc
#

shopt -s no_empty_cmd_completion

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias vi='nvim'
alias vim='nvim'
alias grep='grep --color=auto'
alias ls='ls --color=auto'

export PATH=$HOME/.local/bin:$PATH

# PS1='[\u@\h \W]\$ '
PS1='\[\033]0;\u@\h:\w\007\]\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '
. "$HOME/.cargo/env"
eval "$(fnm env)"
