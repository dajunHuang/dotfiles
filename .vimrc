set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()

packadd YouCompleteMe

syntax on
filetype off
filetype plugin indent on

set modelines=0
set nocompatible
set number relativenumber
set ruler
set encoding=utf-8
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> 
set hidden
set ttyfast
set showmode
set showcmd
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
set mouse=a
set clipboard=unnamedplus
set belloff=all
set autoindent
set smartindent
set laststatus=0
set completeopt-=preview

runtime! macros/matchit.vim

highlight VertSplit cterm=NONE

let g:tmux_navigator_no_mappings = 1
let g:ycm_auto_hover = ""
let NERDTreeWinSize = 30

noremap <silent> <c-h> :<C-U>TmuxNavigateLeft<cr>
noremap <silent> <c-j> :<C-U>TmuxNavigateDown<cr>
noremap <silent> <c-k> :<C-U>TmuxNavigateUp<cr>
noremap <silent> <c-l> :<C-U>TmuxNavigateRight<cr>
noremap <silent> {Previous-Mapping} :<C-U>TmuxNavigatePrevious<cr>
noremap <c-p> :CtrlP
noremap <F12> :YcmCompleter GoTo<cr>
noremap <F3> :NERDTreeToggle<cr>
noremap <c-n> :NERDTreeFocus<cr>
noremap <c-f> :NERDTreeFind<CR>

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 | let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') | execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
