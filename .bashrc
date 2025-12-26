#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
xinput set-prop 9 "libinput Natural Scrolling Enabled" 1

clipme() {
  xclip -selection clipboard
}
psg() {
  if [ ! -z $1 ]; then
    echo "Grepping for processes matching $1..."
    sleep 1
    ps aux | grep $1

  fi
}

export MANPAGER='nvim +Man!'

alias clera='clear'
alias rm='rm -i'
alias cp='cp -i '
alias mv='mv -i'
alias src='source ~/.bashrc'
