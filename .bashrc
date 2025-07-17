#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
zsh: command not found: ▶
source $GOPATH/src/github.com/tomnomnom/gf/gf-completion.bash
. "$HOME/.cargo/env"
