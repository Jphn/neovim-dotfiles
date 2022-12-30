local keymap = vim.keymap

local function map(mode, key, value)
  keymap.set(mode, key, value, { silent = true })
end

-- Clear search
map("n", "<leader>h", ":nohlsearch<CR>")

-- Saving
map("n", "<leader>w", ":w<CR>")
map("n", "<leader>s", ":wa<CR>")

-- Buffer close
map("n", "<C-w>", ":bw<CR>")

-- Buffer navigation
map("n", "<C-l>", ":bn<CR>")
map("n", "<C-h>", ":bp<CR>")

-- Quit
map("n", "<leader>q", ":qa!<CR>")

-- Reload
map("n", "<leader>r", ":source %<CR>")

-- Split screen
map("n", "<right>", "<CMD>wincmd l<CR>")
map("n", "<left>", "<CMD>wincmd h<CR>")
