"
" PLUGLINS.
"
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

" Vimux, to send commands smoothly to Tmux with just one key press.
Plugin 'benmills/vimux'

" CtrP for fuzzy file searching.
Plugin 'ctrlpvim/ctrlp.vim'

" Another plugin to check the synthax.
"Plugin 'vim-syntastic/syntastic'

" Get warning when something is wrong in the python code.
"Plugin 'nvie/vim-flake8'

" You complete me for auto completion.
Plugin 'Valloric/YouCompleteMe'
" Some options for the plugin:
"let g:ycm_min_num_of_chars_for_completion = 99
let g:ycm_autoclose_preview_window_after_completion=1

call vundle#end()            " required
filetype plugin indent on    " required
filetype on
filetype indent on

" Sets the swapfile folder so that I do not pollute the filesystem too much.
set directory^=$HOME/.vim/tmp//

" Colorsheme.
colorscheme wombat256grf

" Make backspace behave in a normal mode.
set backspace=indent,eol,start

" Enable synthax processing.
syntax enable

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

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
set mat=2

set incsearch           " search as characters are entered. 
set hlsearch            " highlight matches

" Turn off search highlight.
nnoremap <leader><leader> :nohlsearch<CR>

" Disable the error bell.
set noerrorbells

" Remap the leader key.
let mapleader = ' '

" Control the way that the split screen works.
set splitbelow
set splitright

" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" Remap navigation keys to navigate better between splits.
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Redo with Ctrl+Y instead of Ctrl+R
noremap <C-Y> <C-R>

" Toogles nerdtree.
nnoremap <Leader>t :NERDTreeToggle<Enter>

" Save all the files and save the current file.
nnoremap <Leader>wa :wa<CR>
nnoremap <Leader>w :w<CR>

" Check Flake8 when the file is saved.
"autocmd BufWritePost *.py call flake8#Flake8()

" Vimux binds for efficient dev and testing.
nnoremap <Leader>vp :VimuxPromptCommand<CR>
nnoremap <Leader>vl :VimuxRunLastCommand<CR>

" YCM shortcuts, gd  to go to definition.
nnoremap <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Map a keybind to refresh the vimrc.
map <Leader>rc :source ~/.vimrc<CR>

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction
