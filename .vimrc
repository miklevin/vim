augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[1 q"
autocmd VimLeave * silent !echo -ne "\e[1 q"
augroup END
syntax on
syntax enable
set autoindent
set background=dark
set backspace=indent,eol,start
set belloff=all
set clipboard+=unnamed
set encoding=utf8
set expandtab
set foldlevel=0
set hlsearch
set ignorecase
set incsearch
set mat=5
set noerrorbells
set nopaste
set nowrap
set number
set relativenumber
set ruler
set shiftwidth=4
set spellfile=~/.vim/en.utf-8.add
set t_Co=256
set tabstop=4
set textwidth=0
set wildmenu
set winheight=15
autocmd BufEnter * :syntax sync fromstart
autocmd BufRead,BufNewFile journal.txt set syntax=on spell tw=79 
autocmd BufRead,BufNewFile journal.md set syntax=on spell tw=79 
autocmd BufRead,BufNewFile notes.md set syntax=on spell tw=79 
autocmd BufRead,BufNewFile README.rst set syntax=on spell tw=79 
autocmd BufRead,BufNewFile README.md set syntax=on spell tw=79 
autocmd BufRead,BufNewFile *.js set tabstop=2 shiftwidth=2
hi SpellBad ctermbg=008
hi LineNr ctermfg=grey
hi Visual ctermbg=green
hi Visual ctermfg=black
hi Cursor ctermbg=green
hi Cursor ctermfg=black
let @j = '/Beginning of Journalokkkk80i-j! datewwwhi, lv$bhd0i## jikkkkkkkkkkkkzzi'
let @p = '?--------------------------------------------------------------------------------jji### Published:wkkkVj/--------------------------------------------------------------------------------ky:bnggpjjddoki### kdd$a'
let @t = ':set expandtab:retab:%s/\s\+$//'
let @h = 'gg/^-\+$\n## [A-Za-z0-9 ,:]*$\n\nzjo### '
let @r = ':%s/\(^\n$\)\+/\r'
let @n = ':!node %'
let @s = '[s1z=e'
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <F2> :set spell! <CR>
noremap <F3> :set relativenumber! <CR>
noremap <F4> :set number! <CR>
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>
