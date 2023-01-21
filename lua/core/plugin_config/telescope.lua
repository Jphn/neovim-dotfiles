require("telescope").setup({
	defaults = {
		file_ignore_patterns = { "node_modules", ".git" },
	},
	pickers = {
		find_files = {
			hidden = true,
		},
	},
})

local builtin = require("telescope.builtin")

local map = require("core.utils").map

map("n", "<C-p>", builtin.find_files)
map("n", "<Space><Space>", builtin.oldfiles)
map("n", "<Space>fg", builtin.live_grep)
map("n", "<Space>fh", builtin.help_tags)
