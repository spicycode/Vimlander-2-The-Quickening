syntax on
filetype plugin indent on
colorscheme vividchalk
au BufNewFile,BufRead *.clj set ft=clojure

" use indents of 2 spaces, and have them copied down lines:
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent

runtime! autoload/pathogen.vim
if exists("g:loaded_pathogen")
  call pathogen#runtime_append_all_bundles()
end

autocmd FileType ruby runtime ruby_mappings.vim

" don't make it look like there are line breaks where there are none
set nowrap

let mapleader = ","

" * Window splits

" Open new horizontal split windows below current
set splitbelow

" Open new vertical split windows to the right
set splitright

" Use neocomplcache. 
let g:NeoComplCache_EnableAtStartup = 1 

" Use smartcase. 
let g:NeoComplCache_SmartCase = 1 

" Use camel case completion. 
let g:NeoComplCache_EnableCamelCaseCompletion = 1 

" Use underbar completion. 
let g:NeoComplCache_EnableUnderbarCompletion = 1 

" Set minimum syntax keyword length. 
let g:NeoComplCache_MinSyntaxLength = 3 

" Quick, jump out of insert mode while no one is looking
imap ii <Esc>

" <leader>f to startup an ack search
map <leader>f :Ack<Space>

" Add RebuildTagsFile function/command
function! s:RebuildTagsFile()
  !ctags --recurse=yes --exclude=coverage --exclude=files --exclude=public --exclude=log --exclude=tmp --exclude=vendor *
endfunction
command! -nargs=0 RebuildTagsFile call s:RebuildTagsFile()

map <silent> <LocalLeader>nt :NERDTreeToggle<CR>
map <silent> <LocalLeader>nr :NERDTree<CR>
map <silent> <LocalLeader>nh :nohls<CR>
