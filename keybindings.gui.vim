" OSX: Specific keybindings
if has("mac")
  
  " TABS: safari style tab navigation
  nmap <D-[> :tabprevious<CR>
  nmap <D-]> :tabnext<CR>
  map <D-[> :tabprevious<CR>
  map <D-]> :tabnext<CR>
  imap <D-[> <C-O>:tabprevious<CR>
  imap <D-]> <C-O>:tabnext<CR>

  " TABS: Firefox style, open tabs with command-<tab number>
  map <silent> <D-1> :tabn 1<CR>
  map <silent> <D-2> :tabn 2<CR>
  map <silent> <D-3> :tabn 3<CR>
  map <silent> <D-4> :tabn 4<CR>
  map <silent> <D-5> :tabn 5<CR>
  map <silent> <D-6> :tabn 6<CR>
  map <silent> <D-7> :tabn 7<CR>
  map <silent> <D-8> :tabn 8<CR>
  map <silent> <D-9> :tabn 9<CR>
  
  " TextMateLikeIndent: bind command-] to shift right
  nmap <D-]> >>
  vmap <D-]> >>
  imap <D-]> <C-O>>>

  " TextMateLikeDeindent: bind command-[ to shift left
  nmap <D-[> <<
  vmap <D-[> <<
  imap <D-[> <C-O><<

  " Unmap Apple+T so we can...
  macmenu &File.New\ Tab key=<nop>

  " Change Apple+T to TextMate Like Fuzzy Finder
  nnoremap <D-t> :FufCoverageFile<CR>

  " Unmap Apple+Shift+T so we can...
  macmenu &File.Open\ Tab\.\.\. key=<nop>

  " CommandShiftT: Fuzzy Find by Tag
  nnoremap <D-T> :FufTag!<CR>

  " Unmap Apple+b so we can...
  macmenu &Tools.Make key=<nop>

  " Change Apple+b to Emacseque buffer browser
  map <D-b> :FufBuffer!<CR>
  imap <D-b> :FufBuffer!<CR>

  " Unmap Apple+S to remap to Esc, then :w<CR>
  macmenu &File.Save key=<nop>
  imap <D-s> <Esc>:w<CR>
  map <D-s> :w<CR>

  " bind command-/ to toggle comment
  " requires NERD Commenter to be installed: http://www.vim.org/scripts/script.php?script_id=1218
  nmap <D-/> ,c<Space>
  vmap <D-/> ,c<Space>
  imap <D-/> <C-O>,c<Space>

  " LeaveInsertMode: Alternate Key mappings
  inoremap <D-i> <Esc>
  nnoremap <D-i> <Esc>

endif
