local opt = vim.opt
local o = vim.o
local g = vim.g

-- General
opt.backspace = "2"
opt.showcmd = true
opt.laststatus = 2
opt.autowrite = true
opt.autoread = true
opt.clipboard = "unnamedplus"
opt.ignorecase = true
opt.smartcase = true
opt.mouse = nil

-- use tabs for spaces and whatnot
o.expandtab = false
-- o.smarttab = true
-- o.cindent = true
-- o.autoindent = true
o.wrap = true
o.textwidth = 300
o.tabstop = 2
o.shiftwidth = 0
o.softtabstop = -1 -- If negative, shiftwidth value is used
o.list = true
o.listchars = "trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂"
-- o.listchars = 'eol:¬,space:·,lead: ,trail:·,nbsp:◇,tab:→-,extends:▸,precedes:◂,multispace:···⬝,leadmultispace:│   ,'
-- o.formatoptions = 'qrn1'

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
o.termguicolors = true

-- Map <leader> as space
g.mapleader = " "
g.maplocalleader = " "

-- Disable Neovim file explorer
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
