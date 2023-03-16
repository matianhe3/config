return function()
	vim.o.timeout = true
	vim.o.timeoutlen = 300
	require("which-key").setup({
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	})
	local wk = require("which-key")
	wk.register({
		["<leader>"] = {
			name = "DIY",
			a = { name = "Aerial" },
			b = { name = "Buffers" },
			c = {
				name = "Code",
				a = { name = "code_action" },
				f = { name = "code_format" },
			},
			g = {
				name = "Goto",
				D = { name = "declaration" },
				d = { name = "definition" },
				i = { name = "implementation" },
				r = { name = "references" },
				t = { name = "type_definition" },
			},
			h = {
				name = "Hop",
			},
			l = {
				name = "LSP",
				f = { name = "format" },
			},
			r = {
				name = "Replace",
				n = { name = "name" },
			},
			t = {
				name = "Telescope",
			},
			w = {
				name = "Window/Space",
				a = { name = "add" },
				r = { name = "remove" },
				l = { name = "list" },
				t = { name = "NvimTree" },
			},
		},
	})
end
