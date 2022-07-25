let mapleader = " "
set nocompatible
set t_Co=256
set encoding=UTF-8
set tabstop=4
set shiftwidth=4
set expandtab
set copyindent
set hlsearch
set incsearch
set showcmd
set showmatch
set wrap linebreak
set cpt-=i
set cpt-=t
set nu rnu " hybrid mode
set shiftround
set smartcase 
set smarttab
set autoindent
set smartindent
set backupskip=/tmp/*,/private/tmp/*
set colorcolumn=80
set signcolumn=number
set background=dark
set laststatus=3 " nvim 0.7
highlight ColorColumn ctermbg=gray
autocmd InsertLeave * set nopaste
" conda installed default location and neovim setup in conda base
if !has("mac")
    let g:python3_host_prog = expand('~/anaconda3/bin/python') 
endif

"{{{ netrw file browser
let g:netrw_banner=0
let g:netrw_browse_split=1
let g:netrw_winsize=25
let g:netrw_altv=1
let g:netrw_liststyle=3
"}}}

if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <C-v> <Esc> <Esc>
  highlight! link TermCursor Cursor
  highlight! TermCursorNC guibg=red guifg=white ctermbg=1 ctermfg=15
  set clipboard+=unnamedplus
  set inccommand=nosplit
  " disable line numbers in temrinal mode
  au TermOpen * setlocal nonu nornu
endif


"{{{ enhance `~` functionality
function! TwiddleCase(str)
  if a:str ==# toupper(a:str)
    let result = tolower(a:str)
  elseif a:str ==# tolower(a:str)
    let result = substitute(a:str,'\(\<\w\+\>\)', '\u\1', 'g')
  else
    let result = toupper(a:str)
  endif
  return result
endfunction
vnoremap ~ y:call setreg('', TwiddleCase(@"), getregtype(''))<CR>gv""Pgv
"}}}
