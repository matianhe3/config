return function()
	require("nvim-tree").setup({})
  vim.api.nvim_set_keymap("n", "<leader>wt", ":NvimTreeToggle<CR>", {})
end
