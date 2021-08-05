#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\e[39m[\e[93m\u\e[39m@\e[96m\h \e[39m\W]\e[93m\$ \e[39m'
