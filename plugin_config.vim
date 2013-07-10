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

" BClose
nmap <Leader>x <Plug>Kwbd

" Screen IMPL
let g:ScreenImpl = 'Tmux'

" FuzzyFinder:
let g:fuf_coveragefile_exclude = '\v\~$|\.(o|exe|dll|bak|orig|swp|tmp|gitkeep|DS_Store)$|(app\/assets\/fonts|vendor\/cache|vendor\/gems)|(^|[/\\])\.(hg|git|bzr|bundle)($|[/\\])'
let g:fuf_buffertag_ctagsPath = '/opt/github/homebrew/bin/ctags'

" NerdTree:
let g:NERDTreeHijackNetrw=0

" Unite:
let g:unite_source_history_yank_enable = 1
" Default to the fuzzy matcher
call unite#filters#matcher_default#use(['matcher_fuzzy'])

" Use ag for search
if executable('ag')
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
