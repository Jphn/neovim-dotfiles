local null_ls = require("null-ls")

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local function on_attach(client, bufnr)
  if client.supports_method("textDocument/formatting") then
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format({ bufnr = bufnr })
      end,
    })
  end
end

null_ls.setup({
  on_attach = on_attach,
  sources = {
    null_ls.builtins.formatting.stylua,
    -- null_ls.builtins.diagnostics.eslint,
    -- null_ls.builtins.completion.spell,
  },
})

vim.cmd("map <Leader>lf :lua vim.lsp.buf.format({ timeout_ms = 2000 })<CR>")
