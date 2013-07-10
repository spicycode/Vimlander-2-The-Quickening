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

" nmap <leader>lf :FufFile<CR>
" nmap <leader>lc :FufCoverageFile<CR>
" nmap <leader>lb :FufBuffer<CR>
" nmap <leader>lt :FufTag<CR>
"
nnoremap <leader>lc :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
nnoremap <leader>lf :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
nnoremap <leader>lr :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
nnoremap <leader>lo :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
nnoremap <leader>ly :<C-u>Unite -no-split -buffer-name=yank    -start-insert history/yank<cr>
nnoremap <leader>lb :<C-u>Unite -no-split -buffer-name=buffer  -start-insert buffer<cr>
