set compatible		" vi, not vim
set ruler		" show cursor position
set number		" show line numbers on the left
set autoindent
set showmode		" show the current mode
set undolevels=100	" 100 undos

"F10 toggles line numbers
map <silent> <F10> :set invnumber<cr>

syntax on

set statusline=%t\ %m%r%y%=(ascii=\%03.3b,hex=\%02.2B)\ (%l/%L,%c)\ (%P)
set laststatus=2
