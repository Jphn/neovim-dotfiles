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
map("n", "<leader>[", ":bn<CR>")
map("n", "<leader>]", ":bp<CR>")

-- Quit
map("n", "<leader>q", ":qa!<CR>")

-- Reload
map("n", "<leader>r", ":source %<CR>")
