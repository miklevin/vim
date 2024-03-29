"  _       _ _         _           
" (_)_ __ (_) |___   _(_)_ __ ___  
" | | '_ \| | __\ \ / / | '_ ` _ \ 
" | | | | | | |_ \ V /| | | | | | |
" |_|_| |_|_|\__(_)_/ |_|_| |_| |_|
" What was once .vimrc is now init.vim.                                 
" It's time to fix my macros. And update Slice & Dice.

" Check if running in Neovim
if has('nvim')
  " Neovim-specific settings go here
  let @p = ":terminal python ~/repos/yamlchop/chop.py -f " . expand('%:p')
else
  " Vim-specific settings go here
  let @p = ":execute '!python ~/repos/yamlchop/chop.py -f ' . expand('%:p')"
endif

syntax on
syntax enable

" Stuff that happens whenever file accessed or buffer is entered.
autocmd BufEnter * :syntax sync fromstart
autocmd BufRead,BufNewFile *.md set syntax=on spell tw=79

"Change cursor shape in different modes. NeoVim does by default.
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Just a whole bunch of preferences for defaults.
set formatoptions+=t
set tabstop=2
set shiftwidth=2
set background=dark
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
set wildmenu
set winheight=15

" Various color preferences
hi SpellBad ctermbg=008
hi LineNr ctermfg=grey
hi Visual ctermbg=green
hi Visual ctermfg=black

"  __  __                          
" |  \/  | __ _  ___ _ __ ___  ___ 
" | |\/| |/ _` |/ __| '__/ _ \/ __|
" | |  | | (_| | (__| | | (_) \__ \
" |_|  |_|\__,_|\___|_|  \___/|___/
"MACRO DEFINITIONS (try to keep them vim-compatible)

"Fill-in missing headlines in blog.
"Needs editing to match the YAMLesque headers in my blog.
"let @h = 'gg/^-\+$\n# [A-Za-z0-9 ,:]*$\n\nzjo# '
"Search blog for meta descriptions that chopped the last sentence:
let @h = 'gg/^description:.*[^".!?]$:set wrap$A'


"Turn image filename into markdown.
"Go from OS screenshots to images embedded in blog in under a minute!
let @i = '0v$hyi![��a$a](��a$pa)��a0llv/\.:s/\%V\<./\u&/g0llv/\.:s/\%V\-/ /g0/\.v/]h�kbhdlli/assets/images/��a0'

"release currently edited blog.
"Needs to be switched to :terminal NeoVim method for interactivity.

"Make new journal entry.
"THIS IS IT! The key to YAMLesque blogging (Reverse chronology and YAML headers).
let @j = '/Beginning of Journalokkkk80i-j! date +"\%a \%b \%d, \%Y"idate: 0ji---kkkkkkkkkkkkkkkkkkkkzzi'

"Strip out excess line returns in blog.
"Removes excess line-returns at bottom of blog posts. Do it every once in awhile. 
let @r = ':%s/\(^\n$\)\+/\rgg:syntax on'

"Replace misspelling before cursor with recommended.
"Maybe the most useful vim-macro I ever wrote.
let @s = '[s1z=e'

"Expand YouTube videoID to markdown for embed.
"Not perfected. Often leaves stuff that has to be hand-coded out.
let @y = '0V:s/https:\/\/.*\///gcc0v$hdi{% include youtubePlayer.html id="pa" %}��a'

" Turns off arrow keys in command mode (form good habits)
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Map the function keys to anything you like in vim!
noremap <F2> :set spell!<CR>
noremap <F3> :set relativenumber! <CR> :set number! <CR>
noremap <F4> :source ~/.config/nvim/init.vim <CR>
noremap <F5> :set wrap! <CR>
noremap <F6> :Copilot disable <CR>
noremap <F7> :Copilot enable <CR>

" Rapidly scroll through your vim buffers & return to the first one.
nnoremap <C-SPACE> :bn<CR>
nnoremap <C-S> :b1<CR> :source ~/.config/nvim/init.vim <CR>

let g:copilot_enable_for_filetypes = ['markdown']
let g:copilot_disable_for_filetypes = ['text']
let g:copilot_filetypes = { 'markdown': v:true, 'text': v:false }

" let g:copilot_filetypes = { '*': v:false }
