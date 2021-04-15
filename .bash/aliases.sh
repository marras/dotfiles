alias ls='ls -G'  # OS-X SPECIFIC - the -G command in OS-X is for colors, in Linux it's no groups
# Navigation -------------------------------------------------------
alias ..='cd ..'
alias ...='cd .. ; cd ..'
cl() { cd $1; ls -la; }

# Other aliases ----------------------------------------------------
alias ll='ls -hl'
alias la='ls -a'
alias lla='ls -lah'

# Misc
alias p8="ping 8.8.8.8"
alias reloadbash='source ~/.bash_profile'
alias ducks='du -cksh * | gsort -rh | head -11' # Lists biggest folders and files sizes in the current folder
alias m='more'
alias top='top -o cpu' # os x
alias df='df -h' # Show disk usage
alias untar="tar xvzf"
alias cp_folder="cp -Rpv" #copies folder and all sub files and folders, preserving security and dates

# Rails
alias r="rails"
alias rs="rails s"
alias rc="rails c"
alias be="bundle exec"

# Git
alias g='git'
alias gb='git branch'
alias gc='git commit'
alias gcm='git commit -m'
alias gco='git checkout'
alias gd='git diff'
alias gdc='git diff --cached'
alias gl='git lg'
alias gs='git status'
alias gwc='git whatchanged -p --abbrev-commit --pretty=medium'
alias gpp='git pull origin master; git push origin master'

alias postgres.server='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log'

alias npm-exec='PATH=$(npm bin):$PATH'
alias nv='nvim'
alias androlog='adb logcat *:E ReactNative:V ReactNativeJS:V'
