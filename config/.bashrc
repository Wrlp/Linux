#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='eza -alF --icons --color=always'
alias grep='grep --color=auto'
alias code="code --ozone.plateform=wayland"
alias reloadbar="pkill waybar && waybar & disown"
alias venv="python -m venv .venv"
alias pip=".venv/bin/pip"
alias cat="bat"

PS1='[\u@\h \W]\$ '
source /usr/share/bash-completion/bash_completion
