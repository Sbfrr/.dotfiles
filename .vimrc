set nocompatible                         " Use Vim settings, rather than Vi settings
set encoding=utf-8                       " Supports unicode
set visualbell
set noerrorbells

set backspace=indent,eol,start           " Allow backspacing over indentation, line breaks, insertion
set softtabstop=2                        " Indent by 2 spaces when hitting tab
set shiftwidth=2                         " Indent by 2 spaces when using >
set tabstop=4                            " Show existing tab with 4 spaces width
set expandtab                            " On pressing tab, insert 4 spaces
"set nowrap                               " Don't wrap lines
set linebreak                            " Wrapp lines at convenient point, avoid in the mid of word

set scrolloff=3                          " Number of screen lines to keep under the cursor
set sidescrolloff=5                      " Number of screen libes to keep on the left/right of cursor

syntax on                                " Enable syntax highlighting
syntax enable
set background=light
colorscheme solarized

set directory=$HOME/.vim/tmp//           " Set directory for swap file
set nobackup                             " Disable backup files
set nowb                                 "
set history=1000                         " Set bigger history of executed command
set confirm                              " Display confirmation dialog when closing unsaved files

filetype plugin indent on                " Smart auto indenting for files
set autoindent                           " New lines inherit indentation of previous line
set autoread                             " Automatically re-read files if unmodified inside vim
match ErrorMsg '\s\+$'                   " Highlight trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e       " Remove trailing whitespaces automatically

set number                               " Enable line numbers
set cursorline                           " Highlight cursor line
set title                                " Set the window's title, with filename being edited

let g:netrw_liststyle = 3                " Use third mode of Netrw (display dir nesting)
let g:netrw_winsize = 20                 " 20 % width for netrw pane

set laststatus=2                         " Always show status line
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
set showcmd                              " Show incomplete commands at the bottom

set wildmenu                             " Display command line's tab complete options as a menu.

set incsearch                            " Find the next match as we type
set hlsearch                             " Highlight searches by default
set ignorecase                           " Ignore case when searching...
set smartcase                            " ... unless you type a capital

nnoremap <C-H> <C-W><C-H>                " Use Ctrl-h instead of Ctrl-w then h to move through panes
nnoremap <C-J> <C-W><C-J>                " Use Ctrl-j instead of Ctrl-w then j to move through panes
nnoremap <C-K> <C-W><C-K>                " Use Ctrl-k instead of Ctrl-w then k to move through panes
nnoremap <C-L> <C-W><C-L>                " Use Ctrl-l instead of Ctrl-w then l to move through panes

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'https://github.com/tpope/vim-endwise'                         " Close code blocks with end automatically
Plug 'jiangmiao/auto-pairs'                                         " Close brackets automatically
Plug 'https://github.com/ervandew/supertab'                         " Enhance auto completion
Plug 'jremmen/vim-ripgrep'                                          " Enhance vimgrep
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }   " Enhance search through project files
Plug 'junegunn/fzf.vim'



call plug#end()
