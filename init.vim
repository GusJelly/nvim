let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

" Tpope
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
Plug 'stevearc/oil.nvim'

call plug#end()

set background=dark

" Sensible defaults
set nowrap
set nohlsearch
set termguicolors
set scrolloff=8
set sidescrolloff=8
set nu
set rnu
set nocursorline

" Removes space from any other keybinding so there are no conflicts
nnoremap <SPACE> <Nop>
let mapleader=" "


" Sourcing lua files:
lua require('file_navigation')
