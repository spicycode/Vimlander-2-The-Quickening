" StatusBar:

if has("statusline") && !&cp
  set laststatus=2  " always show the status bar

  " Start the status line
  set statusline=%f\ %m\ %r

  " Add fugitive
  set statusline+=%{fugitive#statusline()}\ 
  set statusline+=%{cfi#get_func_name()}\

  " Finish the statusline
  set statusline+=Line:%l/%L\ [%p%%]
  set statusline+=\ Col:%v
  set statusline+=\ Buf:#%n
  set statusline+=\ [%b][0x%B]
endif

" Always show status bar
set laststatus=2

