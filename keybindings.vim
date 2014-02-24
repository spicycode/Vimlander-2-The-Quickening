" Map Leader: Reset from \ to ,
let mapleader = ","

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

" TABS: Navigation
nmap <leader>tp :tabprevious<CR>
nmap <leader>tn :tabnext<CR>
nmap <leader>te :tabedit 

" Ag <leader>f to search
map <leader>f :Ag<Space>

" Close buffers
nmap <leader>b :bd<CR>

" List everything (aka coverage mode)
nmap <leader>lc :CtrlP<CR>
nmap <leader>lf :CtrlP<CR>

" List buffers
nmap <leader>lb :CtrlPBuffer<CR>

" List tags
nmap <leader>lt :CtrlPTag<CR>
