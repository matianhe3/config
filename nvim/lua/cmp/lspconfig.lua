local function lspconfig()
  local opts = { noremap = true, silent = true }
  local vim = vim
  vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
  vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
  vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
  vim.api.nvim_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)

  local on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', '<space>lw', vim.lsp.buf.add_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>ld', vim.lsp.buf.remove_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>ll', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, bufopts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', '<space>lr', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<space>la', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', '<space>lf', function() vim.lsp.buf.format { async = true } end, bufopts)

    require("aerial").on_attach(client, bufnr)
    require("lsp_signature").on_attach(client, bufnr)
  end

  local servers = { 'pyright', 'gopls', 'sumneko_lua', 'tsserver' }
  for _, lsp in pairs(servers) do
    require('lspconfig')[lsp].setup({
      on_attach = on_attach,
    })
  end
end

return lspconfig
