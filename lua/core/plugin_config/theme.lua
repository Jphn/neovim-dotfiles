vim.o.termguicolors = true

require('tokyonight').setup {
  transparent = true,
  styles = {
    sidebars = 'transparent',
    floats = 'transparent',
  }
}

vim.cmd [[colorscheme tokyonight]]

vim.cmd [[hi Normal guibg=none ctermbg=none]]
vim.cmd [[hi LineNr guibg=none ctermbg=none]]
vim.cmd [[hi Folded guibg=none ctermbg=none]]
vim.cmd [[hi NonText guibg=none ctermbg=none]]
vim.cmd [[hi SpecialKey guibg=none ctermbg=none]]
vim.cmd [[hi VertSplit guibg=none ctermbg=none]]
vim.cmd [[hi SignColumn guibg=none ctermbg=none]]
vim.cmd [[hi EndOfBuffer guibg=none ctermbg=none]]
vim.cmd [[hi NvimTreeNormal guibg=none ctermbg=none]]
