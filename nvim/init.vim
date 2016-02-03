" Neovim config
" Author: marras <http://github.com/marras>
" Loosely based on Zaiste's Vimified, simplified & adjusted to NeoVim

let g:packages = ['general', 'fancy', 'os', 'coding', 'ruby', 'html', 'css', 'js', 'clojure', 'haskell', 'color']

source $HOME/.config/nvim/config/general.vimrc
source $HOME/.config/nvim/config/plugins.vimrc
source $HOME/.config/nvim/config/keys.vimrc
source $HOME/.config/nvim/config/colors.vimrc

