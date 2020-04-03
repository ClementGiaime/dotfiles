# .bashrc

# User specific aliases and functions

#------------ aliases ------------#
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias json='python3 -m json.tool'

alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias lisa='ls -lisa'
LS_COLOR_THEME='trapd00r'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff='diff --color=auto'



#------------ Color for man ------------#
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
export LESSHISTFILE=-


#------------ Color ------------#
export COLOR_NC='\e[0m' # No Color
export COLOR_WHITE='\e[1;37m'
export COLOR_BLACK='\e[0;30m'
export COLOR_BLUE='\e[0;34m'
export COLOR_LIGHT_BLUE='\e[1;34m'
export COLOR_GREEN='\e[0;32m'
export COLOR_LIGHT_GREEN='\e[1;32m'
export COLOR_CYAN='\e[0;36m'
export COLOR_LIGHT_CYAN='\e[1;36m'
export COLOR_RED='\e[0;31m'
export COLOR_LIGHT_RED='\e[1;31m'
export COLOR_PURPLE='\e[0;35m'
export COLOR_LIGHT_PURPLE='\e[1;35m'
export COLOR_BROWN='\e[0;33m'
export COLOR_YELLOW='\e[1;33m'
export COLOR_GRAY='\e[0;30m'
export COLOR_LIGHT_GRAY='\e[0;37m'


#------------ Prompt ------------#
PS1=" $COLOR_RED\w $COLOR_BLUE>$COLOR_LIGHT_BLUE>$COLOR_NC " # ~ >>


# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

LS_COLOR_PATH="$HOME/.lscolors/${LS_COLOR_THEME}.discolors"

echo $LS_COLOR_PATH

if [[ -f $LS_COLOR_PATH ]]; then
    echo $LS_COLOR_PATH
    eval $(dircolors -b $LS_COLOR_PATH)
else
    eval $(dircolors)
fi