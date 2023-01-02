local on_attach = function(_, _)
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
	vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

	vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
	vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})
	vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
	-- vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, {})
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local lsp = require("lspconfig")
local util = lsp.util

lsp.sumneko_lua.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
		},
	},
})

lsp.tsserver.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	root_dir = util.root_pattern("package.json", "tsconfig.json", "jsconfig.json", "*.html"),
})

lsp.denols.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	root_dir = util.root_pattern("deno.json", "deno.jsonc"),
})

lsp.html.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
