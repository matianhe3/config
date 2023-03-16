return function()
	require("telescope").setup({
		defaults = {
			-- Default configuration for telescope goes here:
			-- config_key = value,
			mappings = {
				i = {
					-- map actions.which_key to <C-h> (default: <C-/>)
					-- actions.which_key shows the mappings for your picker,
					-- e.g. git_{create, delete, ...}_branch for the git_branches picker
					["<C-h>"] = "which_key",
				},
			},
		},
		extensions = {
			fzf = {
				fuzzy = true, -- false will only do exact matching
				override_generic_sorter = true, -- override the generic sorter
				override_file_sorter = true, -- override the file sorter
				case_mode = "smart_case", -- or "ignore_case" or "respect_case"
			},
		},
	})
	require("telescope").load_extension("fzf")
	require("telescope").load_extension("neoclip")

	local builtin = require("telescope.builtin")
	vim.keymap.set("n", "<leader>tf", builtin.find_files, {})
	vim.keymap.set("n", "<leader>tg", builtin.live_grep, {})
	vim.keymap.set("n", "<leader>tb", builtin.buffers, {})
	vim.keymap.set("n", "<leader>tt", ":Telescope<CR>", {})
end
