" Vim filetype plugin file
" Language:     Clojure
" Maintainer:   Meikel Brandmeyer <mb@kotka.de>

" Only do this when not done yet for this buffer
if exists("clojure_loaded")
	finish
endif

let clojure_loaded = "2.2.0-SNAPSHOT"

let s:cpo_save = &cpo
set cpo&vim

command -nargs=0 ClojureRepl call vimclojure#StartRepl()

let &cpo = s:cpo_save
