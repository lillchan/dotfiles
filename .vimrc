set tabstop=2 softtabstop=2
set shiftwidth=2 "shift arrow will indent by 4 spaces
set hlsearch "highlight when searching
set autoindent
set expandtab "tabs to spaces
set nu "line numbers
set hidden "keep other buffers open
set smartcase "case sensitive when use capitals
set ignorecase "required to use smartcase
set incsearch "incremental search
set scrolloff=8 "start scrolling when 8 lines from the bottom

highlight Search ctermfg=white ctermbg=darkmagenta
syntax on

"https://github.com/junegunn/vim-plug
"automatic install: https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
call plug#end()
