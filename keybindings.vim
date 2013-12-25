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

" List everything (aka coverage mode)
nmap <leader>lc :Unite -toggle -auto-resize -buffer-name=mixed file_rec/async buffer file_mru bookmark<cr><c-u>

" List files 
nmap <leader>lf :Unite -toggle -auto-resize -buffer-name=files file_rec/async<cr><c-u>

" List buffers
nmap <leader>lb :Unite -auto-resize -buffer-name=buffers buffer<cr>

" List tags
nmap <leader>lt :Unite -auto-resize -buffer-name=tags tag<cr> 

" List sessions
nmap <leader>ls :Unite -auto-resize -buffer-name=sessions session<cr> 
