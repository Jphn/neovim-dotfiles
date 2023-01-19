vim.diagnostic.config({
	virtual_text = false, -- Turn off inline diagnostics
})

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

local map = require("core.utils").map

map("n", "<leader>do", vim.diagnostic.open_float)