"" General options  -----------------------
set nocompatible                " choose no compatibility with legacy vi
set background=dark             " who doesn't like dark backgrounds?
set history=1000                " default history is 20, I'll have none of that
set tabpagemax=15               " show no more than 15 tabs
set t_Co=256                    " allow for 256 colors
syntax enable

"" Additional misc settings  --------------
set encoding=utf-8
set wildmenu                    " really good file completion
set wildmode=list:longest,full
set title
set scrolloff=3
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation
"" call pathogen#infect()          " tpope's pathogen for vim addons

"" Wrapping  ------------------------------
set wrap
set linebreak
set nolist

"" Make scrolling through wrapped lines easier
imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk
nmap <silent> <Down> gj
nmap <silent> <Up> gk

"" Whitespace  ----------------------------
set tabstop=3
set shiftwidth=3                " tab is three spaces
set expandtab                   " tabs are now spaces!
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching  -----------------------------
set hlsearch                    " highlighting matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"" Color/Visual  --------------------------
color desertmod                 " my modified desert scheme (~/.vim/colors/desertmod.vim)
set number                      " line numbers are nice
set cursorline                  " so is highlighting the current line
set showmode                    " show the current mode

