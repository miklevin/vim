if &term =~ "xterm"
 set t_Co=256
 if has("terminfo")
   let &t_Sf=nr2char(27).'[3%p1%dm'
let &t_Sb=nr2char(27).'[4%p1%dm'
 else
   let &t_Sf=nr2char(27).'[3%dm'
   let &t_Sb=nr2char(27).'[4%dm'
 endif
endif
syntax on
syntax enable
hi SpellBad ctermbg=052
autocmd BufEnter * :syntax sync fromstart
set autoindent
set background=dark
set backspace=indent,eol,start
set clipboard+=unnamed
set encoding=utf8
set expandtab
set foldlevel=0
set hlsearch
set ignorecase
set incsearch
set mat=5
set mouse=a
set nopaste
set nowrap
set number
set ruler
set shiftwidth=4
set tabstop=4
set textwidth=0
set wildmenu
set winheight=15
autocmd BufRead,BufNewFile *.html,*.md set tw=79 nonumber
autocmd BufRead,BufNewFile index.html set syntax=off 
highlight LineNr ctermfg=grey
let @j = '/Beginning of Journalokkkk80i-j! datei## jzzi'
let @h = 'gg/^-\+$\n## [A-Za-z0-9 ,:]*$\n\nzjo### '
let @c = ':retab:%s/\s\+$//'
let @s = '[s1g='
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
" Toggle spell checking on and off with `,s`
let mapleader = ","
nmap <silent> <leader>s :set spell!<CR>
