set nocompatible                         " Use Vim settings, rather than Vi settings
set encoding=utf-8                       " Supports unicode
set visualbell
set noerrorbells

set backspace=indent,eol,start           " Allow backspacing over indentation, line breaks, insertion,utf
set softtabstop=2                        " Indent by 2 spaces when hitting tab
set shiftwidth=2                         " Indent by 2 spaces when using >
set tabstop=4                            " Show existing tab with 4 spaces width
set expandtab                            " On pressing tab, insert 4 spaces
"set nowrap                              " Don't wrap lines
set linebreak                            " Wrapp lines at convenient point, avoid in the mid of word

set scrolloff=3                          " Number of screen lines to keep under the cursor
set sidescrolloff=5                      " Number of screen libes to keep on the left/right of cursor

syntax on                                " Enable syntax highlighting
syntax enable

set background=light                     " Set theme to solarized light
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
set showcmd                              " Show incomplete commands at the bottom

set wildmenu                             " Display command line's tab complete options as a menu.

set incsearch                            " Find the next match as we type
set hlsearch                             " Highlight searches by default
set ignorecase                           " Ignore case when searching...
set smartcase                            " ... unless you type a capital

let mapleader = " "
nnoremap <C-p> :Files<CR>
nnoremap <Leader>rg :Rg<Space>
nnoremap <Leader>RG :Rg!<Space>
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <Leader>u :UndotreeToggle<cr>

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let g:UltiSnipsExpandTrigger="<tab>"                                " Trigger configuration.
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

call plug#begin('~/.vim/plugged')

Plug 'pearofducks/ansible-vim'                                        " Add ansible syntaxt to vim
Plug 'vim-ruby/vim-ruby'                                              " Omni and syntax for ruby
Plug 'leafgarland/typescript-vim'                                     " Omni and syntax for typescript

Plug 'iamcco/markdown-preview.nvim', {'do': 'cd app & yarn install'}  " Preview of mardkdown files

Plug 'vim-airline/vim-airline'                                        " Theme for vim status line
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'                                           " Using same colourfor vim & tmux
Plug 'christoomey/vim-tmux-navigator'                                 " Navigater Seamlessly between vim and tmux

Plug 'ervandew/supertab'                                              " Enhance auto completion
Plug 'ludovicchabant/vim-gutentags'                                   " Auto generation of ctags
Plug 'SirVer/ultisnips'                                               " Track the engine.
Plug 'honza/vim-snippets'                                             " Snippets are separated from the engine. Add this if you want them:
Plug 'tpope/vim-vinegar'                                              " Enhance Nerdtree

Plug 'jremmen/vim-ripgrep'                                            " Enhance vimgrep
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }     " Fuzzy finder
Plug 'junegunn/fzf.vim'

call plug#end()

