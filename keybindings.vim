" Map Leader: Reset from \ to ,
let mapleader = ","

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

" TABS: Navigation
nmap <leader>tp :tabprevious<CR>
nmap <leader>tn :tabnext<CR>
nmap <leader>te :tabedit 

" AckVim: <leader>f to search
map <leader>f :Ack<Space>

" Close buffers
nmap <leader>b :bd<CR>

nmap <leader>lf :CtrlP<CR>
nmap <leader>lb :CtrlPBuffer<CR>
nmap <leader>lt :CtrlPTag<CR>
