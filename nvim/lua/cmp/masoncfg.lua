local function masoncfg()
	require("mason-lspconfig").setup({
		ensure_installed = { "sumneko_lua" },
	})
end

return masoncfg
