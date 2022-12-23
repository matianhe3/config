local function lspconfig()
  local vim = vim

  local on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

    require("lsp_signature").on_attach(client, bufnr)
  end

  local servers = { "pyright", "gopls", "sumneko_lua", "tsserver", "eslint", "volar"}
  for _, lsp in pairs(servers) do
    require("lspconfig")[lsp].setup({
      on_attach = on_attach,
    })
  end
end

return lspconfig
