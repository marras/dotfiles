source ~/.bash/settings.sh
source ~/.bash/colors.sh
source ~/.bash/history.sh
source ~/.bash/search.sh
source ~/.bash/aliases.sh
source ~/.bash/completion.sh
source ~/.bash/path.sh

if [ $IS_INTERACTIVE = 'true' ] ; then # Interactive shell only
  source ~/.bash/git_friendly_prompt.sh
fi

source ~/.bash/rvm.sh
