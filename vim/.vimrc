set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" NerdTree
Plugin 'scrooloose/nerdtree'
let NERDTreeShowHidden=1

" Tmux navigator for more natural navigation between vim and tmux.
Plugin 'christoomey/vim-tmux-navigator'

call vundle#end()            " required
filetype plugin indent on    " required

" Colorsheme.
colorscheme wombat256grf

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
set number relativenumber

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

" Remap the leader key.
let mapleader = ','

" Control the way that the split screen works.
set splitbelow
set splitright

" Remap navigation keys to navigate better between splits.
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Toogles nerdtree.
nnoremap <Leader>t :NERDTreeToggle<Enter>

" Smart indentation.
set smartindent

