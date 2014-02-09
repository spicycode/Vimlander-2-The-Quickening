" RubyAndRails:
" Highlight ruby operators
let ruby_operators = 1

" Turn off rails bits of statusbar
let g:rails_statusline=0

" Screen IMPL
let g:ScreenImpl = 'Tmux'

set tags=./.tags;,./tags

" GitGutter:
let g:gitgutter_escape_grep = 1
let g:gitgutter_realtime = 0

" Airline:
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 0
" Enable airline tabline
let g:airline#extensions#tabline#enabled = 0

" CtrlP:
" Only use the nearest parent dir with a .git folder
let g:ctrlp_working_path_mode = 'r'

" Silver surfer time
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" Open files in existing buffers, ctrl-t opens in new tab
let g:ctrlp_switch_buffer = 'ET'
