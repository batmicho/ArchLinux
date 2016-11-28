#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
 
#PS1='[\u@\h \W]\$ '

red=$(tput  setaf 3)
    green=$(tput setaf 2)
    blue=$(tput setaf 5)
    reset=$(tput sgr0)

    PS1='\[$red\]\u\[$reset\]@\[$green\]\h\[$reset\]:\[$blue\]\w\[$reset\]\$ '

    if [ -z "$DISPLAY" ] && [ "$(fgconsole)" -eq 1 ]; then
  exec startx
fi


