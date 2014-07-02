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
let g:unite_winheight = 10

let g:unite_enable_start_insert = 1

let g:unite_enable_short_source_names = 1

let g:unite_source_history_yank_enable = 1

" To track long mru history.
let g:unite_source_file_mru_long_limit = 3000
let g:unite_source_directory_mru_long_limit = 3000
let g:unite_source_session_enable_auto_save = 1

" Default to the fuzzy matcher
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])

call unite#set_profile('files', 'ignorecase', 1)
call unite#set_profile('buffer', 'ignorecase', 1)
call unite#set_profile('tag', 'ignorecase', 1)

" sort file results by length
" call unite#custom_source('file_rec/async', 'sorters', 'sorter_length')
" call unite#custom_source('file_rec/async', 'ignore_pattern', '/\.(jpg|svg|gif|png)$/')

" Use ag for search
if executable('ag')
  let g:unite_source_rec_async_command = 'ag --nocolor -l .'

  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  nmap <buffer> <ESC>      <Plug>(unite_exit)

  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction


" Neocompletioncache:

 let g:neocomplcache_enable_at_startup = 1
 let g:neocomplcache_enable_camel_case_completion = 1
 let g:neocomplcache_enable_smart_case = 1
 let g:neocomplcache_enable_underbar_completion = 1
 let g:neocomplcache_enable_auto_delimiter = 1
 let g:neocomplcache_max_list = 15
 let g:neocomplcache_force_overwrite_completefunc = 1

 " <TAB>: completion.
 inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
