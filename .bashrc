#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
 
#PS1='[\u@\h \W]\$ '

# red=$(tput  setaf 3)
#     green=$(tput setaf 2)
#     blue=$(tput setaf 5)
#     reset=$(tput sgr0)
# 
#     PS1='\[$red\]\u\[$reset\]@\[$green\]\h\[$reset\]:\[$blue\]\w\[$reset\]\$ '
# 
#     if [ -z "$DISPLAY" ] && [ "$(fgconsole)" -eq 1 ]; then
#   exec startx
# fi

#PROMPT_COMMAND='exstatus=$?;
#        PS1="\u@\h :\t: extSt:$exstatus $";'
	

export PS1="\[\033[38;5;129m\]\u\[$(tput sgr0)\]\[\033[38;5;14m\]@\[$(tput sgr0)\]\[\033[38;5;10m\]\h\[$(tput sgr0)\]\[\033[38;5;15   m\]:\[$(tput sgr0)\]\[\033[38;5;6m\][\w]:\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

#export PS1="\[\033[38;5;163m\]\u\[$(tput sgr0)\]\[\033[38;5;80m\]@\[$(tput sgr0)\]\[\033[38;5;77m\]\h\[$(tput sgr0)\]\[\033[38;5;1   5m\]:\[$(tput sgr0)\]\[\033[38;5;6m\][\w]:\[$(tput sgr0)\]\[\033[38;5;15m\]\\$\[$(tput sgr0)\]"
~
