" VIM MASTER

syntax on                   " syntax highlighting
set nocompatible            " be iMproved, require this
set backspace=2             " vim 7.4 fix

" set compiler for c++
set makeprg=clang++\ -o\ out/%<\ -std='c++11'\ %

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
filetype off
call vundle#begin()

" put plugins here, run :PluginInstall to install
Plugin 'gmarik/Vundle.vim' " let Vundle manage Vundle, required
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tmhedberg/SimpylFold'
" Plugin 'delimitMate.vim'
" Plugin 'klen/python-mode'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'preservim/nerdtree'
Plugin 'junegunn/fzf.vim'

call vundle#end()           " required
filetype plugin indent on   " required

" Setters
set encoding=utf-8
set incsearch "Set search previewing
set hlsearch "Highlight search items
set cursorline "Add cursorline to view
set number "Set line numbering
set tabstop=4 "Set all the tabbing; autocmds in scripts override
set softtabstop=4 "Make sure this is equal to tabstop
set shiftwidth=4 "Used for > and < opeators
set expandtab "Changes tabs to spaces
set nocompatible "Gets out of old vim mode
set noerrorbells "No bells in terminal
set undolevels=1000 "Number of undos stored
set viminfo='50,"50 " '=marks for x files, "=registers for x files
set nofen "All folds are open
set foldmethod=indent "Indent based folding
set showcmd "Show command status
set showmatch "Flashes matching paren when one is typed
set showmode "Show editing mode in status (-- INSERT --)
set ruler "Show cursor position
set autoindent "Autoindents after returen
set tags=./tags;/ "Looks for tags in the pwd of the current file; stops at root
set path+=** "Searches directories recursively
set colorcolumn=81 "To help from going over 80 char limit

" File-specific indentation
autocmd BufRead, BufNewFile *.py, *.c, *.h set ts=2 sts=2 sw=2
autocmd BufRead, BufNewFile *.ruby set ts=2 sts=2 sw=2

" make split windows easier to navigate
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l
map <C-m> <C-w>_
nmap \| <C-w>v
nmap <C-_> <C-w>s

" nerd tree
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Source .vimrc_local if exists
if filereadable(glob("~/.vimrc_local"))
    source ~/.vimrc_local
endif
