export HISTCONTROL=ignoredups
export HISTFILESIZE=10000
export HISTIGNORE="ls:cd:[bf]g:exit:..:...:ll:lla"
alias h=history
hf(){
  grep "$@" ~/.bash_history
}
