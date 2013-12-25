" RubyAndRails:
" Highlight ruby operators
let ruby_operators = 1

" Turn off rails bits of statusbar
let g:rails_statusline=0

" Screen IMPL
let g:ScreenImpl = 'Tmux'

" FuzzyFinder:
let g:fuf_coveragefile_exclude = '\v\~$|\.(o|exe|dll|bak|orig|swp|tmp|gitkeep|DS_Store)$|(app\/assets\/fonts|vendor\/cache|vendor\/gems)|(^|[/\\])\.(hg|git|bzr|bundle)($|[/\\])'
let g:fuf_buffertag_ctagsPath = '/opt/github/homebrew/bin/ctags'

set tags=./.tags;,./tags

" GitGutter:
let g:gitgutter_escape_grep = 1
let g:gitgutter_realtime = 0

" Airline:
let g:airline_powerline_fonts = 1
