return function()
	require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
  vim.api.nvim_set_keymap("n", "<leader>hw", ":HopWord<CR>", {})
  vim.api.nvim_set_keymap("n", "<leader>hl", ":HopLine<CR>", {})
  vim.api.nvim_set_keymap("n", "<leader>hc", ":HopChar1<CR>", {})
  vim.api.nvim_set_keymap("n", "<leader>hh", ":HopChar2<CR>", {})
  vim.api.nvim_set_keymap("n", "<leader>hp", ":HopPattern<CR>", {})
end
