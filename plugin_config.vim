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

" CtrlP
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*  " Linux/MacOSX

let g:ctrlp_custom_ignore = {
\ 'dir':  '\.git$\|\.hg$\|\.svn$',
\ 'file': '\.exe$\|\.so$\|\.dll$'
\ }

" EasyMotion:
let g:EasyMotion_do_mapping=0
nnoremap <silent> <Leader>w       :call EasyMotionWB(0, 0)<CR>
vnoremap <silent> <Leader>w  :<C-U>call EasyMotionWB(1, 0)<CR>

" BClose
nmap <Leader>x <Plug>Kwbd

" Screen IMPL
let g:ScreenImpl = 'Tmux'
