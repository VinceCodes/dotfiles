" Colorsheme.
colorscheme wombat256grf

" Disable compatible mode.
set nocompatible

" Make backspace behave in a normal mode.
set backspace=indent,eol,start

" Enable synthax processing.
syntax enable

" Number of spaces per TAB.
set tabstop=4
set softtabstop=4

" Tabs are spaces.
set expandtab

" Show line numbers.
set number

" Show command in bottom bar.
set showcmd

" Autocomplete in command menu.
set wildmenu

" Do not redraw the screen.
set lazyredraw

" Show the matching parenthesis.
set showmatch

set incsearch           " search as characters are entered. 
set hlsearch            " highlight matches

" Turn off search highlight.
nnoremap <leader><space> :nohlsearch<CR>

" Disable the error bell.
set noerrorbells
