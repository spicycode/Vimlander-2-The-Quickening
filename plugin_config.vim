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
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#set_profile('files', 'smartcase', 1)
call unite#set_profile('files', 'ignorecase', 1)
call unite#custom#source('line,outline','matchers','matcher_fuzzy')

let g:unite_data_directory='~/.vim/.cache/unite'
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable=1
let g:unite_source_rec_max_cache_files=5000
let g:unite_prompt='» '

let g:unite_source_grep_command='ag'
let g:unite_source_grep_default_opts='--nocolor --nogroup -S -C4'
let g:unite_source_grep_recursive_opt=''

call unite#custom_source('file_rec,file_rec/async,file_mru,file,buffer,grep',
      \ 'ignore_pattern', join([
      \ '\.git/',
      \ '\.bundle/',
      \ 'app/assets/images',
      \ 'tmp/',
      \ 'public/',
      \ 'vendor/',
      \ ], '\|'))

function! s:unite_settings()
  " Exit unite buffers with esc
  nmap <buffer> <esc> <plug>(unite_exit)
  imap <buffer> <esc> <plug>(unite_exit)

  " Open in splits/vsplits/tabs
  imap <silent><buffer><expr> <C-j> unite#do_action('split')
  imap <silent><buffer><expr> <C-k> unite#do_action('vsplit')
  imap <silent><buffer><expr> <C-l> unite#do_action('tabopen')
endfunction
autocmd FileType unite call s:unite_settings()
