require("nvim-tree").setup({
  view = {
    adaptive_size = true,
    float = {
      enable = true,
    },
  },
  renderer = {
    highlight_opened_files = "all",
    indent_markers = {
      enable = true,
      icons = {
        corner = "└ ",
        edge = "│ ",
        item = "│ ",
        none = "  ",
      },
    },
  },
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
  filters = {
    dotfiles = true,
  },
})

vim.keymap.set("n", "<leader>e", "<CMD>NvimTreeFindFileToggle<CR>")
vim.keymap.set("n", "<leader>o", ":NvimTreeFocus<CR>")
