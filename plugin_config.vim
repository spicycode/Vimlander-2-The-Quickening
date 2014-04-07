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

" Unite:
let g:unite_source_history_yank_enable = 1

" sort file results by length
call unite#custom#source('file_rec/async', 'sorters', 'sorter_length')
call unite#custom_source('file_rec/async', 'ignore_pattern', '/\.(jpg|svg|gif|png)$/')

" Default to the fuzzy matcher
call unite#filters#matcher_default#use(['matcher_fuzzy'])

" Use ag for search
if executable('ag')
  let g:unite_source_rec_async_command = 'ag -l .'

  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Play nice with supertab
  let b:SuperTabDisabled=1

  nmap <buffer> <ESC>      <Plug>(unite_exit)

  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction
