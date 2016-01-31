# Use ack for grepping and find if ack is available

if type -P ack &>/dev/null ; then
  a(){
    ack $* --color-match=green --color-filename=blue --smart-case
  }
  # search for full words
  aw(){
    ack $* --color-match=green --color-filename=blue --word-regexp --smart-case
  }
else
  a(){
    grep -Rin $1 *
  }
fi

f(){
  find . -iname "$1*"
}
