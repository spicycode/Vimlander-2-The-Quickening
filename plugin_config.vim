" RubyAndRails:
" Highlight ruby operators
let ruby_operators = 1

" Turn off rails bits of statusbar
let g:rails_statusline=0

" VimClojure:
let vimclojure#HighlightBuiltins = 1
let vimclojure#ParenRainbow = 1
let vimclojure#DynamicHighlighting = 1

" NERDCommenter:
let NERDDefaultNesting = 0
let NERDRemoveExtraSpaces = 1
let NERDSpaceDelims = 1

" FuzzyFinder:
let g:fuf_splitPathMatching = 1         " Enable fuzzy finder path splitting
let g:fuf_autoPreview = 0               " Disable preview window

" TagList:
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let tlist_clojure_settings = 'lisp;f:function'
let Tlist_Exit_OnlyWindow=1

" EasyMotion:
let g:EasyMotion_do_mapping=0
nnoremap <silent> <Leader>w       :call EasyMotionWB(0, 0)<CR>
vnoremap <silent> <Leader>w  :<C-U>call EasyMotionWB(1, 0)<CR>

" BClose
nmap <Leader>x <Plug>Kwbd
