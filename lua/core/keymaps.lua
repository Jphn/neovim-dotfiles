local g = vim.g
local keymap = vim.keymap

g.mapleader = ' '
g.maplocalleader = ' '

keymap.set('n', '<leader>h', ':nohlsearch<CR>')
keymap.set('n', '<leader>w', ':w<CR>')
keymap.set('n', '<leader>q', ':qa<CR>')
keymap.set('n', '<leader>r', ':source %<CR>')
