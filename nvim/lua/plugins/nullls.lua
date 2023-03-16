return function()
	local null_ls = require("null-ls")

	null_ls.setup({
		sources = {
			null_ls.builtins.diagnostics.eslint_d,
			null_ls.builtins.completion.spell,
			null_ls.builtins.formatting.black,
			null_ls.builtins.formatting.gofumpt,
			null_ls.builtins.formatting.joker,
			null_ls.builtins.formatting.json_tool,
			null_ls.builtins.formatting.nginx_beautifier,
			null_ls.builtins.formatting.nixfmt,
			null_ls.builtins.formatting.nixpkgs_fmt,
			null_ls.builtins.formatting.prettier_d_slim,
			null_ls.builtins.formatting.shfmt,
			null_ls.builtins.formatting.sql_formatter,
			null_ls.builtins.formatting.stylua,
			null_ls.builtins.formatting.tidy,
			null_ls.builtins.formatting.yamlfmt,
		},
	})
end
