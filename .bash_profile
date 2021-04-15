source ~/.bash/settings.sh
source ~/.bash/colors.sh
source ~/.bash/history.sh
source ~/.bash/search.sh
source ~/.bash/aliases.sh
source ~/.bash/completion.sh
source ~/.bash/path.sh
source ~/.bash/ruby.sh

if [ $IS_INTERACTIVE = 'true' ] ; then # Interactive shell only
  source ~/.bash/git_friendly_prompt.sh
fi

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

eval "$(lua ~/bin/z.lua --init bash)"
