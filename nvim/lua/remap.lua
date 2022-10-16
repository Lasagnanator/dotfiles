vim.g.mapleader      = " "
vim.g.maplocalleader = " "

local options = { noremap = true, silent = false }
local keymap = vim.keymap.set

keymap( "", "<Space>", "<Nop>", options )


keymap( "n", "<Leader>w",     "<Cmd>w<CR>",      options )
keymap( "n", "<Leader>q",     "<Cmd>q!<CR>",     options )
keymap( "n", "<Leader>W",     "<Cmd>wa<CR>",     options )
keymap( "n", "<Leader>Q",     "<Cmd>qa!<CR>",    options )
keymap( "n", "<Leader>e",     ":e ",             options )
keymap( "n", "<Leader>v",     "<C-W>v<C-W>l:e ", options )
keymap( "n", "<Leader>s",     "<C-W>s<C-W>j:e ", options )
keymap( "n", "<C-h>",         "<C-W>h",          options )
keymap( "n", "<C-j>",         "<C-W>j",          options )
keymap( "n", "<C-k>",         "<C-W>k",          options )
keymap( "n", "<C-l>",         "<C-W>l",          options )
keymap( "n", "<C-Left>",      "<C-W>H",          options )
keymap( "n", "<C-Down>",      "<C-W>J",          options )
keymap( "n", "<C-Up> ",       "<C-W>K",          options )
keymap( "n", "<C-Right>",     "<C-W>L",          options )
keymap( "n", "<Leader>o",     "<C-W>o",          options )
keymap( "n", "<Leader><bar>", "<C-W><bar>",      options )
keymap( "n", "<Leader>_",     "<C-W>_",          options )
keymap( "n", "<Leader>n",     ":tabnew ",        options )
keymap( "n", "<Leader>t",     "gt",              options )
keymap( "n", "<Leader>T",     "gT",              options )
              
--vim.cmd("nnoremap <Leader>w <Cmd>w<CR>")
--vim.cmd("nnoremap <Leader>q <Cmd>q!<CR>")
--vim.cmd("nnoremap <Leader>W <Cmd>wa<CR>")
--vim.cmd("nnoremap <Leader>Q <Cmd>qa!<CR>")
--vim.cmd("nnoremap <Leader>e :e ")
--vim.cmd("nnoremap <Leader>v <C-W>v<C-W>l:e ")
--vim.cmd("nnoremap <Leader>s <C-W>s<C-W>j:e ")
--vim.cmd("nnoremap <C-h> <C-W>h")
--vim.cmd("nnoremap <C-j> <C-W>j")
--vim.cmd("nnoremap <C-k> <C-W>k")
--vim.cmd("nnoremap <C-l> <C-W>l")
--vim.cmd("nnoremap <C-Left> <C-W>H")
--vim.cmd("nnoremap <C-Down> <C-W>J")
--vim.cmd("nnoremap <C-Up> <C-W>K")
--vim.cmd("nnoremap <C-Right> <C-W>L")
--vim.cmd("nnoremap <Leader>o <C-W>o")
--vim.cmd("nnoremap <Leader><bar> <C-W><bar>")
--vim.cmd("nnoremap <Leader>_ <C-W>_")
--vim.cmd("nnoremap <Leader>n :tabnew ")
--vim.cmd("nnoremap <Leader>t gt")
--vim.cmd("nnoremap <Leader>T gT")
-- vim.cmd("nnoremap <Leader>v :vsplit ")
-- vim.cmd("nnoremap <Leader>s :split ")
