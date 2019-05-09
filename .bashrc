#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

EDITOR=vim
export LANG=de_DE.UTF-8


export PATH="$PATH:~/.config/scripts"
alias ls='ls --color=auto'
export PS1="\[\e[32m\][\[\e[m\]\[\e[37m\]\u\[\e[m\]@\[\e[35m\]\h\[\e[m\] \W\[\e[32m\]]\[\e[m\]\[\e[m\]\\$\[\e[m\] "
alias ll="ls -l"
alias ec="vim ~/.config/i3/config"
alias pacman="yay"

alias config='/usr/bin/git --git-dir=/home/zanidd/.dotfiles/ --work-tree=/home/zanidd'

alias mutt="neomutt"
