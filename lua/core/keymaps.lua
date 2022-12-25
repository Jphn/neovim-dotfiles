local g = vim.g

g.mapleader = ' '
g.maplocalleader = ' '

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<leader>w', ':wa<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')
