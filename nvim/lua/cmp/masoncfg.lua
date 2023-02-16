local function masoncfg()
	require("mason-lspconfig").setup({
		ensure_installed = { },
	})
end

return masoncfg
