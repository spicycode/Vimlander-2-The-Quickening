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
nmap <leader>q :Bclose<CR>
nmap <leader>b :bd<CR>

nnoremap <c-p> :<C-u>Unite -no-split -profile-name=files file_rec/async:!<cr>
nnoremap <leader>lc :<C-u>Unite -no-split -profile-name=files file_rec/async:!<cr>
nnoremap <leader>lf :<C-u>Unite -no-split -profile-name=files file<cr>
nnoremap <leader>lo :<C-u>Unite -no-split outline<cr>
nnoremap <leader>ly :<C-u>Unite -no-split history/yank<cr>
nnoremap <leader>lb :<C-u>Unite -no-split -profile-name=buffer buffer<cr>
nnoremap <leader>lt :<C-u>Unite -no-split -profile-name=tag tag<cr>

" In command-line mode, C-a jumps to beginning (to match C-e)
cnoremap <C-a> <Home>

" yank to system clipboard
map <leader>y "*y

" paste lines from unnamed register and fix indentation
nmap <leader>p pV`]=
nmap <leader>P PV`]=

" Apple+R to run spec in Dispatch
nnoremap <leader>r :Dispatch<CR>
