local opt = vim.opt
-- local o = vim.o
local g = vim.g

-- General
opt.backspace = "2"
opt.laststatus = 2
opt.autowrite = true
opt.autoread = true
opt.clipboard = "unnamedplus"
opt.ignorecase = true
opt.smartcase = true
opt.mouse = nil

-- Vim line
opt.showcmd = true
opt.showmode = false
opt.ruler = false

-- use tabs for spaces and whatnot
opt.expandtab = false
-- opt.smarttab = true
-- opt.cindent = true
-- opt.autoindent = true
opt.wrap = true
opt.textwidth = 300
opt.tabstop = 4
opt.shiftwidth = 0
opt.softtabstop = -1 -- If negative, shiftwidth value is used
opt.list = true
opt.listchars = "trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂"
-- opt.listchars = 'eol:¬,space:·,lead: ,trail:·,nbsp:◇,tab:→-,extends:▸,precedes:◂,multispace:···⬝,leadmultispace:│   ,'
-- opt.formatoptions = 'qrn1'

-- Undo and backup options
opt.backup = false
opt.writebackup = false
opt.undofile = true
opt.swapfile = false
opt.cursorline = true
opt.scrolloff = 8

-- Editor interface
opt.number = true
opt.relativenumber = true
opt.termguicolors = true

-- Map <leader> as space
g.mapleader = " "
g.maplocalleader = " "

-- Disable Neovim file explorer
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
