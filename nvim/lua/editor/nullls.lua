local function nullls()
	local null_ls = require("null-ls")
	require("null-ls").setup({
		sources = {
			null_ls.builtins.formatting.stylua,
			null_ls.builtins.diagnostics.eslint,
			null_ls.builtins.completion.spell,
			null_ls.builtins.formatting.black,
			null_ls.builtins.formatting.prettier,
		},
	})
end

return nullls
