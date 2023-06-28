return function()
	require("nvim-treesitter.configs").setup({
		ensure_installed = {
			"bash",
			"c",
			"cpp",
			"clojure",
			"css",
			"dockerfile",
			"git_rebase",
			"gitignore",
			"go",
			"html",
			"java",
			"javascript",
			"json",
			"lua",
			"markdown",
			"nix",
			"python",
			"sql",
			"tsx",
			"typescript",
			"vue",
			"vim",
			"yaml",
			"yuck",
		},
		sync_install = true,
		auto_install = true,
		ignore_install = {},
		highlight = {
			enable = true,
			disable = {},
			additional_vim_regex_highlighting = false,
		},
		context_commentstring = {
			enable = true,
		},
		rainbow = {
			enable = true,
			query = "rainbow-parens",
		},
		autotag = {
			enable = true,
		},
		textobjects = {
			select = {
				enable = true,
				lookahead = true,
				keymaps = {
					["af"] = "@function.outer",
					["if"] = "@function.inner",
					["ac"] = "@class.outer",
					["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
					["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
				},
				selection_modes = {
					["@parameter.outer"] = "v", -- charwise
					["@function.outer"] = "V", -- linewise
					["@class.outer"] = "<c-v>", -- blockwise
				},
				include_surrounding_whitespace = true,
			},
		},
	})
end
