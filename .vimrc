set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent

set nu "line numbers
set hidden "keep other buffers open
set smartcase "case sensitive when use capitals
set ignorecase "required to use smartcase
set incsearch "incremental search
set scrolloff=8 "start scrolling when 8 lines from the bottom
set colorcolumn=80 "red bar at 80 chars

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
call plug#end()

