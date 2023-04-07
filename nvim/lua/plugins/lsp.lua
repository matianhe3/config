return function()
	local on_attach = function(_, bufnr)
		-- Enable completion triggered by <c-x><c-o>
		vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

		-- Mappings.
		-- See `:help vim.lsp.*` for documentation on any of the below functions
		local bufopts = { noremap = true, silent = true, buffer = bufnr }
		vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, bufopts)
		vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, bufopts)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
		vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, bufopts)
		vim.keymap.set("n", "<leader>gt", vim.lsp.buf.type_definition, bufopts)
		vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, bufopts)
		vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, bufopts)
		vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, bufopts)
		vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, bufopts)
		vim.keymap.set("n", "<leader>wl", function()
			print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
		end, bufopts)
		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, bufopts)
		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, bufopts)
		vim.keymap.set("n", "<leader>cf", function()
			vim.lsp.buf.format({
				bufnr = bufnr,
				filter = function(client)
					return client.name == "null-ls"
				end,
			})
		end, bufopts)
	end

	local capabilities = require("cmp_nvim_lsp").default_capabilities()
	capabilities.textDocument.foldingRange = {
		dynamicRegistration = false,
		lineFoldingOnly = true,
	}

	require("neodev").setup({})

	local servers = {
		"lua_ls",
		"pyright",
		"tsserver",
		"bashls",
		"cssls",
		"clojure_lsp",
		"eslint",
		"emmet_ls",
		"gopls",
		"html",
		"jsonls",
		"sqlls",
		"tailwindcss",
		"tsserver",
		"yamlls",
	}
	for _, lsp in pairs(servers) do
		if lsp == "lua_ls" then
			require("lspconfig")[lsp].setup({
				settings = {
					lua_ls = {
						diagnostics = {
							globals = { "vim", "ngx" },
						},
					},
				},
				filetypes = { "lua" },
				capabilities = capabilities,
				on_attach = on_attach,
			})
		elseif lsp == "gopls" then
			require("lspconfig")[lsp].setup({
				settings = {
					gopls = {
						gofumpt = true,
					},
				},
				capabilities = capabilities,
				on_attach = on_attach,
			})
		else
			require("lspconfig")[lsp].setup({
				capabilities = capabilities,
				on_attach = on_attach,
			})
		end
	end
end
