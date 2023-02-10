local function masoncfg()
	require("mason-lspconfig").setup({
		ensure_installed = { "gopls", "pyright"},
	})
end

return masoncfg
