#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias code="code --ozone-platform=wayland"
alias reloadbar="pkill waybar && waybar & disown"
alias ll="eza -1bghlF --colour=always --group-directories-first --icons=always -alF"
alias venv="python -m venv .venv"
alias pip=".venv/bin/pip"
alias cat="bat"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

PS1='[\u@\h \W]\$ '
