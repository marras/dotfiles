if [[ $- == *i* ]] ; then
  export IS_INTERACTIVE=true
else
  export IS_INTERACTIVE=false
fi

if [[ -z $SSH_CONNECTION ]]; then
  export IS_REMOTE=false
else
  export IS_REMOTE=true
fi

# Editors
export EDITOR='vim'  #Command line
export GIT_EDITOR='vim'
export BUNDLER_EDITOR='vim'

# Autojump
[[ -f `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# Android SDK
export ANDROID_HOME=/Users/marek/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

export LANG="en_US.UTF-8"
export LC_ALL=$LANG
