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

function extract() {
  if [ -f $1 ]; then
    case $1 in
    *.tar.bz2) tar xjf $1 ;;
    *.tar.gz) tar xzf $1 ;;
    *.bz2) bunzip2 $1 ;;
    *.rar) rar x $1 ;;
    *.gz) gunzip $1 ;;
    *.tar) tar xf $1 ;;
    *.tbz2) tar xjf $1 ;;
    *.tgz) tar xzf $1 ;;
    *.zip) unzip $1 ;;
    *.Z) uncompress $1 ;;
    *) echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
