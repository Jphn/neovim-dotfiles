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

local map = require("core.utils").map

map("n", "<leader>e", "<CMD>NvimTreeFindFileToggle<CR>")
-- map("n", "<leader>o", "<CMD>NvimTreeFocus<CR>")
