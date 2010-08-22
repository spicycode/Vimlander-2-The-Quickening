function! CustomClojureSettings()
  set filetype=clojure
endfunction

function! CustomMarkdownSettings()
  set filetype=mkd
endfunction

augroup SpicyAutoCommands
  autocmd BufEnter,BufWritePost *.clj   call CustomClojureSettings()
  autocmd BufEnter *.markdown call CustomMarkdownSettings()
augroup END
