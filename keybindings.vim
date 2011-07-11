" Map Leader: Reset from \ to ,
let mapleader = ","

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

" TABS: Navigation
nmap tp :tabprevious<CR>
nmap tn :tabnext<CR>
nmap te :tabedit 
nmap to :tabonly<CR>

" NERDTree: Open with F2
nmap <F2> :NERDTreeToggle<CR>

" AckVim: <leader>f to search
map <leader>f :Ack<Space>

" ExitInsertMode: Alternative keybinding
imap jj <Esc>

nmap <leader>lf :FufCoverageFile<CR>
nmap <leader>lb :FufBuffer<CR>
nmap <leader>lt :FufTag<CR>

" Close buffers
nmap <leader>b :bd<CR>
