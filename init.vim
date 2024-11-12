:set noexpandtab

:set ignorecase
:set number
" Put your own customizations below

" Spot tabs and spaces in a file
set list listchars=tab:»·,trail:·,nbsp:·

" case insensitive searches
:set ic

"
" this is for easier tab navigation.
" I might remap leader to the spacebar with let mapleader = " "
"
noremap <leader>te  :tabedit
noremap <leader>t. :tabedit .<cr>
noremap <leader>p :tabp<cr>
noremap <leader>n :tabn<cr>
"noremap <leader>p  :tabm -1<cr>
"noremap <leader>n  :tabm +1<cr>

noremap <C-n> :tabn<cr>
noremap <C-p> :tabp<cr>


