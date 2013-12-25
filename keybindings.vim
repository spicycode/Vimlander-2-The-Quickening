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
" map <leader>f :Unite -no-quit -buffer-name=search grep:.<cr>

" Close buffers
nmap <leader>b :bd<CR>

nmap <leader>lf :Unite -toggle -auto-resize -buffer-name=files file_rec/async<cr><c-u>
nmap <leader>lc :Unite -toggle -auto-resize -buffer-name=mixed file_rec/async buffer file_mru bookmark<cr><c-u>
nmap <leader>lb :Unite -auto-resize -buffer-name=buffers buffer<cr>
nmap <leader>lt :FufTag<CR>

