local map = require("core.utils").map

-- Clear search
map("n", "<leader>h", "<CMD>nohlsearch<CR>")

-- Saving
map("n", "<leader>w", "<CMD>w<CR>")
map("n", "<leader>W", "<CMD>wa<CR>")

-- Buffer close
map("n", "<C-w>", "<CMD>bw<CR>")

-- Buffer navigation
map("n", "<C-l>", "<CMD>bn<CR>")
map("n", "<C-h>", "<CMD>bp<CR>")

-- Quit
map("n", "<leader>q", "<CMD>qa!<CR>")

-- Reload
map("n", "<leader>r", "<CMD>source $MYVIMRC<CR>")

-- Split screen
map("n", "<right>", "<CMD>wincmd l<CR>")
map("n", "<left>", "<CMD>wincmd h<CR>")
