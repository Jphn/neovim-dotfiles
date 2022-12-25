local opt = vim.opt
local o = vim.o

-- General
opt.backspace = '2'
opt.showcmd = true
opt.laststatus = 2
opt.autowrite = true
opt.cursorline = true
opt.autoread = true
opt.clipboard = 'unnamedplus'
opt.ignorecase = true
opt.smartcase = true

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
