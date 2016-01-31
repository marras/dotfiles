# Input stuff
bind "set completion-ignore-case on" # note: bind used instead of sticking these in .inputrc
bind "set show-all-if-ambiguous On" # show list automatically, without double tab
bind "set bell-style none" # no bell

shopt -s checkwinsize # After each command, checks the windows size and changes lines and columns

# git completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# Add completion to source and .
complete -F _command source
complete -F _command .

