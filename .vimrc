set spellfile=~/.vim/en.utf-8.add
set t_Co=256
syntax on
syntax enable
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
set nopaste
set nowrap
set number
set relativenumber
set ruler
set shiftwidth=4
set tabstop=4
set textwidth=0
set wildmenu
set winheight=15
autocmd BufEnter * :syntax sync fromstart
autocmd BufRead,BufNewFile journal.md set syntax=on spell tw=79 
autocmd BufRead,BufNewFile README.rst set syntax=on spell tw=79 
hi SpellBad ctermbg=008
hi LineNr ctermfg=grey
hi Visual ctermbg=green
hi Visual ctermfg=black
hi Cursor ctermbg=green
hi Cursor ctermfg=black
let @t = '/# TO-DOz'
let @j = '/Beginning of Journalokkkk80i-j! datewwwhi, lv$bhd0i## jzzi'
let @p = '?--------------------------------------------------------------------------------jji### Published:wkkkVj/--------------------------------------------------------------------------------ky:bnggpjjddoki### kdd$a'
let @h = 'gg/^-\+$\n## [A-Za-z0-9 ,:]*$\n\nzjo### '
let @c = ':retab:%s/\s\+$//'
let @s = ':s/\n\n/\r/gcc'
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <F2> :set spell! <CR>
noremap <F3> :set relativenumber! <CR>
noremap <F4> :set number! <CR>
