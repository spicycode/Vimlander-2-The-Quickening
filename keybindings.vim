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

nmap <leader>lf :FufFile<CR>
nmap <leader>lc :FufCoverageFile<CR>
nmap <leader>lb :FufBuffer<CR>
nmap <leader>lt :FufTag<CR>

" Unimpaired: map up/down arrow keys to unimpaired commands
" Move line up or down 
nmap <Up> [e
nmap <Down> ]e
" Move selection up or down
vmap <Up> [egv
vmap <Down> ]egv

" Indent/deindent line
nmap <Left> <<
nmap <Right> >>
" Indent/deindent selection
vmap <Left> <gv
vmap <Right> >gv
