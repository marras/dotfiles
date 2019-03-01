# Dotfiles - config files for system programs (OS X)

- git
- ack
- iTerm2


## Install basic programs
- [iterm2](http://www.iterm2.com/)
- Install XCode from app store
- Install [homebrew](http://mxcl.github.com/homebrew/)

Then, use homebrew to install remaining useful software.

`brew install ack curl git openssl`

## iTerm2

### settings (theme included)

1. go to `iTerm2 -> Preferences -> General Tab`
2. check `Load preferences from a user-defined folder or URL`
3. in the input below the checkbox, enter
   `/Users/YOUR_USER_NAME/dotfiles/.iterm2`
4. restart iTerm2

## Neovim

By default Neovim looks for config file in `~/.config/nvim/init.vim`. 
Make a symlink from there to the dotfiles/nvim dir, launch Neovim and
install plugins by pressing F10. Restart nvim and you should be good to go.
