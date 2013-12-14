" General Settings:

scriptencoding utf-8                    " UTF8 All day, every day
set directory=/tmp/                     " Set temporary directory (don't litter local dir with swp/tmp files)

" Set it to internal VIM Help
set keywordprg=:help

if v:version >= 703
  " Set undofile.
  set undofile
  let &undodir=&directory
endif

" Enable filetype-specific indenting, syntax, and plugins
filetype plugin indent on
set nocompatible
syntax on

set vb t_vb=                            " Disable visual bell
set autoread                            " Set to auto read when a file is changed from the outside
set nobackup                            " Do not create backup files when saving over existing files
set nowritebackup                       " A little paranoid, but disable the writebackup function as well
set noswapfile                          " No swap files when editing please

" We're on the fastest TTY ever
set ttyfast

set completeopt=menuone,preview

" Ignore case on insert completion
set infercase

set matchpairs+=<:>                     " Also match angle brackets

" Mouse:

set mousehide                           " Hide mouse pointer on insert mode.
set mouse=a

" Text:

set whichwrap=h,l,~,[,]                 " Wrap with more keys
set nowrap                              " Disable line wrapping

" use indents of 2 spaces, and have them copied down lines:
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
" Round indent by a multiple of shiftwidth in indent mode
set shiftround

set number                              " Enable line numbers
set numberwidth=3                       " Set line number column width

" WindowAndBufferManagement:

set splitbelow                          " Open new horizontal split windows below current
set splitright                          " Open new vertical split windows to the right
"set switchbuf=useopen,usetab,split      " Don't change my current buffer on quickfix


" WildMenuModeConfig:
" When more than one match, list all matches and complete first match.
set wildmode=list:full    

" Search:
" show the `best match so far' as search strings are typed:
set incsearch
" Don't highlight search result.
set nohlsearch
" Searches wrap around the end of the file
set wrapscan

" assume the /g flag on :s substitutions to replace all matches in a line:
set gdefault

" Tags:

" Show extra information when using tags in insert mode
set showfulltag

" Formatting:
set fo-=o " Do not automatically insert the current comment leader after hitting 'o' or 'O' in Normal mode.
set fo-=r " Do not automatically insert a comment leader after an enter
set fo-=t " Do no auto-wrap text using textwidth (does not apply to comments)

" We use all the colors, all 256 of the possible colors in the universe
set t_Co=256

set hidden

" Show line wraps with fancy action
set showbreak=↪


function! s:BigHeadMode()
  set guifont=Source\ Code\ Pro:h27
endfunction
command! BigHeadMode call <SID>BigHeadMode()

