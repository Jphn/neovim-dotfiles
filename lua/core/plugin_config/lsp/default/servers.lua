require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "tsserver", "html", "cssls" },
	automatic_installation = true,
})
