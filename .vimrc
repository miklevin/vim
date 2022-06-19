"        _                    
" __   _(_)_ __ ___  _ __ ___ 
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__ 
" (_)_/ |_|_| |_| |_|_|  \___|
" It's not emacs, but it'll do.
                            
syntax on
syntax enable
autocmd BufEnter * :syntax sync fromstart
autocmd BufRead,BufNewFile *md.txt set syntax=on spell tw=79
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
hi SpellBad ctermbg=008
hi LineNr ctermfg=grey
hi Visual ctermbg=green
hi Visual ctermfg=black
hi Cursor ctermbg=green
hi Cursor ctermfg=black
let @h = 'gg/^-\+$\n## [A-Za-z0-9 ,:]*$\n\nzjo### '
let @i = '0v$hyi![€ýa$a](€ýa$pa)€ýa0llv/\.:s/\%V\<./\u&/g0llv/\.:s/\%V\-/ /g0/\.v/]h€kbhdlli/assets/images/€ýa0'
let @g = ":execute '!clear;python ~/github/skite/skite/core.py -f ~/github/journal/sites.csv; read -p \"Press Enter to Continue...\"'"
let @p = ":execute '!clear;python ~/github/skite/skite/core.py -f ~/github/journal/sites.csv -x ' . expand('%:p:h') . '; read -p \"Press Enter to Continue...\"'"
let @j = '/Beginning of Journalokkkk80i-j! date +"\%a \%b \%d, \%Y"i## 0jikkkkkkkkkkkkkkkkkkkkkkzzi'
let @o = ':€PS%norm i> ^[A<br />[201~€kb€kb€kb€kb€kb€kb€kb€kb€kb€kb€kb€kbi>n€kb A<br />0lli<cite>&#151;Mike Levin, 2022</cite>€ýa0j'
let @r = ':%s/\(^\n$\)\+/\r'
let @s = '[s1z=e'
let @t = ':set expandtab:retab:%s/\s\+$//'
let @t = '[s1z='
let @y = '0v$hdi{% include youtubePlayer.html id="pa" %}€ýa'
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <F2> :set spell! <CR>
noremap <F3> :set relativenumber! <CR>
noremap <F4> :set number! <CR>
nnoremap <C-@> :bnext<CR>

" These change the cursor between a block and I-beam
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"


