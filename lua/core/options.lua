local opt = vim.opt
local o = vim.o
local g = vim.g

-- General
opt.backspace = "2"
opt.showcmd = true
opt.laststatus = 2
opt.autowrite = true
opt.cursorline = true
opt.autoread = true
opt.clipboard = "unnamedplus"
opt.ignorecase = true
opt.smartcase = true
opt.mouse = nil
opt.scrolloff = 8

-- use spaces for tabs and whatnot
opt.tabstop = 2
opt.shiftwidth = 2
opt.shiftround = true
opt.expandtab = true

-- Undo and backup options
opt.backup = false
opt.writebackup = false
opt.undofile = true
opt.swapfile = false

-- Editor interface
opt.number = true
opt.relativenumber = false
o.termguicolors = true

-- Map <leader> as space
g.mapleader = " "
g.maplocalleader = " "

-- Disable Neovim file explorer
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
