" Powerline:
let g:Powerline_symbols = 'fancy'

" RubyAndRails:
" Highlight ruby operators
let ruby_operators = 1

" Turn off rails bits of statusbar
let g:rails_statusline=0

" VimClojure:
let vimclojure#HighlightBuiltins = 1
let vimclojure#ParenRainbow = 1
let vimclojure#DynamicHighlighting = 1

" EasyMotion:
let g:EasyMotion_do_mapping=0
nnoremap <silent> <Leader>w       :call EasyMotionWB(0, 0)<CR>
vnoremap <silent> <Leader>w  :<C-U>call EasyMotionWB(1, 0)<CR>

" BClose
nmap <Leader>x <Plug>Kwbd

" Screen IMPL
let g:ScreenImpl = 'Tmux'

" FuzzyFinder:
let g:fuf_coveragefile_exclude = '\v\~$|\.(o|exe|dll|bak|orig|swp|tmp|gitkeep|DS_Store)$|(app\/assets\/fonts|vendor\/cache|vendor\/gems)|(^|[/\\])\.(hg|git|bzr|bundle)($|[/\\])'
let g:fuf_buffertag_ctagsPath = '/opt/github/homebrew/bin/ctags'

" NerdTree:
let g:NERDTreeHijackNetrw=0

" EasyTags:
let g:easytags_cmd = '/opt/github/homebrew/bin/ctags'
let g:easytags_dynamic_files = 1

set tags=./.tags;,~/.vimtags

