return function()
	require("bufferline").setup({})
	vim.api.nvim_set_keymap("n", "<leader>bc", ":BufferLinePickClose<CR>", {})
	vim.api.nvim_set_keymap("n", "<leader>bn", ":BufferLineCycleNext<CR>", {})
	vim.api.nvim_set_keymap("n", "<leader>bp", ":BufferLineCyclePrev<CR>", {})
	vim.api.nvim_set_keymap("n", "<leader>bs", ":BufferLinePick<CR>", {})
end
