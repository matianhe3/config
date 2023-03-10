return function()
	require("mason-lspconfig").setup({
		ensure_installed = {
			"lua_ls",
			"pyright",
			"bashls",
			"cssls",
			"clojure_lsp",
			"eslint",
			"emmet_ls",
			"gopls",
			"html",
			"jsonls",
			"sqlls",
      "tailwindcss",
			"tsserver",
      "volar",
      "yamlls"
		},
	})
end
