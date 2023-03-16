return function()
	require("aerial").setup({})
  vim.api.nvim_set_keymap("n", "<leader>ao", ":AerialOpen<CR>", {})
  vim.api.nvim_set_keymap("n", "<leader>ac", ":AerialClose<CR>", {})
  vim.api.nvim_set_keymap("n", "<leader>an", ":AerialNext<CR>", {})
  vim.api.nvim_set_keymap("n", "<leader>ap", ":AerialPrev<CR>", {})
end
