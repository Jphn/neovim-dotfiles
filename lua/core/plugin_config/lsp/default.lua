require("mason-lspconfig").setup({
  ensure_installed = { "sumneko_lua", "tsserver", "html", "cssls" },
  automatic_installation = true,
})
