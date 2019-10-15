set nocompatible

set background=light

set autoindent
set expandtab
set softtabstop=2
set shiftwidth=2

set title
set number
set ruler
set wrap
set scrolloff=3

set visualbell
set noerrorbells

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'git@github.com:scrooloose/nerdtree.git'

call plug#end()

let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
map <C-n> :NERDTreeToggle<CR>

