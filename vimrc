" Enable pathogen
call pathogen#runtime_append_all_bundles()

" UTF-8 All the way
scriptencoding utf-8

" Use zsh.
set shell=zsh

" Enable filetype-specific indenting, syntax, and plugins
filetype plugin indent on
set nocompatible
syntax on

" Disable bell.
set vb t_vb=

" Set to auto read when a file is changed from the outside
set autoread

" COLOR SUPPORT

" Explicitly set 256 color support
set t_Co=256

colorscheme vividchalk

" TEXT SETTINGS

" Disable line wrapping
set nowrap

" use indents of 2 spaces, and have them copied down lines:
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" line numbers
set number
set numberwidth=3


" KEY BINDINGS

let mapleader = ","

" WINDOW SPLITTING

" Open new horizontal split windows below current
set splitbelow

" Open new vertical split windows to the right
set splitright


" CUSTOM PLUGINS

" Use neocomplcache. 
let g:NeoComplCache_EnableAtStartup = 1 
