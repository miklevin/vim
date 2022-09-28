"        _                    
" __   _(_)_ __ ___  _ __ ___ 
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__ 
" (_)_/ |_|_| |_| |_|_|  \___|
" It's not emacs, but it'll do.

scriptencoding utf-8
                            
syntax on
syntax enable
autocmd BufEnter * :syntax sync fromstart
autocmd BufRead,BufNewFile *.md set syntax=on spell tw=79

" These change the cursor between a block and I-beam
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

set tabstop=2
set shiftwidth=2
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
set spellfile=~/repos/vim/en.utf-8.add
set t_Co=256
set textwidth=0
set wildmenu
set winheight=15
"hi SpellBad ctermbg=008
hi SpellBad cterm=underline,bold ctermbg=NONE ctermfg=red
hi LineNr ctermfg=grey
hi Visual ctermbg=green
hi Visual ctermfg=black
hi Cursor ctermbg=green
hi Cursor ctermfg=black

"MACRO DEFINITIONS

let @a = "iMy Life Stories"
let @b = "iNavigating Life Through Livecasting"
let @c = "iTechnology & Life Observations"
let @d = "iStatic Site Generator (Skite)"
let @e = "iLinux Playgrounds (WSL & LXD)"

"Fill-in missing headlines in blog.
let @h = 'gg/^-\+$\n## [A-Za-z0-9 ,:]*$\n\nzjo### '

"Fill-in missing category tagging in blog.
let @t = 'gg/^-\+$\n## [A-Za-z0-9 ,:]*$\n### .*$\n\nzjjocategory:  l'

"Turn image filename into markdown.
let @i = '0v$hyi![ýa$a](ýa$pa)ýa0llv/\.:s/\%V\<./\u&/g0llv/\.:s/\%V\-/ /g0/\.v/]hkbhdlli/assets/images/ýa0'

"Release currently edited blog.
let @p = ":execute '!clear;python ~/repos/skite/skite/skite.py -f ~/repos/journal/sites.csv -x ' . expand('%:p:h') . '; read -p \"Press Enter to Continue...\"'"

"Make new journal entry.
let @j = '/Beginning of Journalokkkk80i-j! date +"\%a \%b \%d, \%Y"i## 0jikkkkkkkkkkkkkkkkkkkkkkzzi'

"Format poem (requires visual block selection +2 lines)
let @o = ':PS%norm i> ^[A<br />[201~kbkbkbkbkbkbkbkbkbkbkbkbi>nkb A<br />0lli<cite>&#151;Mike Levin, 2022</cite>ýa0j'

let @q = ":%s/’/'/gcc"

"Strip out excess line returns in blog.
let @r = ':%s/\(^\n$\)\+/\r'

"Replace misspelling before cursor with recommended.
let @s = '[s1z=e'

"Expand YouTube videoID to markdown for embed.
let @y = '0V:s/https:\/\/.*\///gcc0v$hdi{% include youtubePlayer.html id="pa" %}ýa'

"Backup all sites to repos.
let @z = ":execute '!clear;python ~/repos/skite/skite/skite.py -f ~/repos/journal/sites.csv; read -p \"Press Enter to Continue...\"'"

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <F2> :set spell! <CR>
noremap <F3> :set relativenumber! <CR>
noremap <F4> :set number! <CR>
nnoremap <C-@> :bnext<CR>



