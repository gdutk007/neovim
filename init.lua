
--  :set noexpandtab
vim.opt.expandtab=false

-- :set ignorecase
vim.opt.ignorecase=true

-- :set number
vim.opt.number=true

-- " Put your own customizations below

-- " Spot tabs and spaces in a file
-- set list listchars=tab:»·,trail:·,nbsp:·
vim.opt.listchars={tab='»·',trail='·',nbsp='·'}

--" this is for easier tab navigation.
--" I might remap leader to the spacebar with let mapleader = " "
--"

-- Mapping keys can be done in lua with: vim.api.nvim_set_keymap(mode, keys, mapping, options)

--noremap <leader>te  :tabedit
vim.api.nvim_set_keymap(
"n",
"<leader>te",
":tabedit",
{noremap=true}
)

--noremap <leader>t. :tabedit .<cr>
--noremap <leader>p :tabp<cr>
--noremap <leader>n :tabn<cr>
--"noremap <leader>p  :tabm -1<cr>
--"noremap <leader>n  :tabm +1<cr>
--
--noremap <C-n> :tabn<cr>
--noremap <C-p> :tabp<cr>
--

-- This creates the path to the home folder. So it
-- would be ~/.local/share/nvim/lazy/lazy.nvim
-- From here we can install lazy.nvim package manager
-- and use that to install plugins like treesitter.
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- io.write("hello world!")
-- io.write(lazypath)
