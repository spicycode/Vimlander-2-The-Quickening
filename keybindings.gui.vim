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
  nnoremap <D-t> :<C-u>Unite -no-split -profile-name=files file_rec/async:!<cr>

  " Unmap Apple+Shift+T so we can...
  macmenu &File.Open\ Tab\.\.\. key=<nop>

  " CommandShiftT: Fuzzy Find by Tag
  nnoremap <D-T> :<C-u>Unite -no-split -profile-name=tag tag<cr>

  " Unmap Apple+b so we can...
  macmenu &Tools.Make key=<nop>

  " Change Apple+b to Emacseque buffer browser
  nnoremap <D-b> :<C-u>Unite -no-split -profile-name=buffer buffer<cr>
  imap <D-b>: <C-u>Unite -no-split -profile-name=buffer buffer<cr>

  " Unmap Apple+S to remap to Esc, then :w<CR>
  macmenu &File.Save key=<nop>
  imap <D-s> <Esc>:w<CR>
  map <D-s> :w<CR>

  " LeaveInsertMode: Alternate Key mappings
  inoremap <D-i> <Esc>
  nnoremap <D-i> <Esc>

  " " Unmap Apple+F so we can...
  macmenu Edit.Find.Find\.\.\. key=<nop>

  " Change Apple+F to /
  nnoremap <D-f> /

  " Apple+R to run spec in Dispatch
  nnoremap <D-r> :Dispatch rspec %<CR>

endif
