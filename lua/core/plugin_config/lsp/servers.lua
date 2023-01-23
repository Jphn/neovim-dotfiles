local capabilities = require("cmp_nvim_lsp").default_capabilities()

local lsp = require("lspconfig")
local util = lsp.util

local map = require("core.utils").map
local on_attach = function(client, _)
	map("n", "<leader>rn", vim.lsp.buf.rename)
	map("n", "<leader>ca", vim.lsp.buf.code_action)

	map("n", "gd", vim.lsp.buf.definition)
	map("n", "gi", vim.lsp.buf.implementation)
	map("n", "gr", require("telescope.builtin").lsp_references)
	map("n", "K", vim.lsp.buf.hover)
	-- map("i", "<C-h>", vim.lsp.buf.signature_help)

	local active_clients = vim.lsp.get_active_clients()
	if client.name == "denols" then
		for _, client_ in pairs(active_clients) do
			-- stop tsserver if denols is already active
			if client_.name == "tsserver" then
				client_.stop()
			end
		end
	elseif client.name == "tsserver" then
		for _, client_ in pairs(active_clients) do
			-- prevent tsserver from starting if denols is already active
			if client_.name == "denols" then
				client.stop()
			end
		end
	end
end

-----------------------
-- Lua (sumneko_lua) --
-----------------------
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

--------------------------
-- TS and JS (tsserver) --
--------------------------
lsp.tsserver.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	root_dir = util.root_pattern("package.json", "tsconfig.json", "jsconfig.json"),
	single_file_support = false,
})

-------------------
-- Deno (denols) --
-------------------
lsp.denols.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	root_dir = util.root_pattern("deno.json", "deno.jsonc"),
	single_file_support = false,
})

-----------------
-- HTML (html) --
-----------------
lsp.html.setup({
	init_options = {
		configurationSection = { "html", "css", "javascript" },
		embeddedLanguages = {
			css = true,
			javascript = true,
		},
		provideFormatter = true,
	},
	on_attach = on_attach,
	capabilities = capabilities,
})

-----------------
-- CSS (cssls) --
-----------------
lsp.cssls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

----------------------
-- Python (pyright) --
----------------------
lsp.pyright.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
