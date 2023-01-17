return {
	map = function(mode, key, value)
		vim.keymap.set(mode, key, value, { silent = true, noremap = true })
	end,
}
