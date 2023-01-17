require("nvim-tree").setup({
})

local map = require("core.utils").map

map("n", "<leader>e", "<CMD>NvimTreeFindFileToggle<CR>")
-- map("n", "<leader>o", "<CMD>NvimTreeFocus<CR>")
