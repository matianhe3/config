return function()
	vim.o.timeoutlen = 300
	require("which-key").setup({})
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
			d = {
				name = "Dap",
				s = { name = "start debug" },
				b = { name = "toggle breakpoint" },
				o = { name = "step over" },
				i = { name = "step into" },
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
			r = {
				name = "Replace",
				n = { name = "name" },
			},
			t = {
				name = "Telescope",
				t = { name = "telescope" },
				b = { name = "buffers" },
				f = { name = "find files" },
				g = { name = "live grep" },
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
