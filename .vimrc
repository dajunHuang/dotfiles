set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()

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
noremap <silent> <c-h> :<C-U>TmuxNavigateLeft<cr>
noremap <silent> <c-j> :<C-U>TmuxNavigateDown<cr>
noremap <silent> <c-k> :<C-U>TmuxNavigateUp<cr>
noremap <silent> <c-l> :<C-U>TmuxNavigateRight<cr>
noremap <silent> {Previous-Mapping} :<C-U>TmuxNavigatePrevious<cr>
noremap <c-p> :CtrlP
noremap <F12> :YcmCompleter GoTo<cr>
