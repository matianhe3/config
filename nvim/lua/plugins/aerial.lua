return function()
	require("aerial").setup({
		backends = { "treesitter", "lsp", "markdown", "man" },
		open_automatic = true,
	})
	vim.api.nvim_set_keymap("n", "<leader>ao", ":AerialOpen<CR>", {})
	vim.api.nvim_set_keymap("n", "<leader>ac", ":AerialClose<CR>", {})
	vim.api.nvim_set_keymap("n", "<leader>an", ":AerialNext<CR>", {})
	vim.api.nvim_set_keymap("n", "<leader>ap", ":AerialPrev<CR>", {})
end
