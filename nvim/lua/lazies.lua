local vim = vim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = require("plugins/tokyonight"),
	},
	{
		"nvim-tree/nvim-web-devicons",
	},
	{
		"folke/which-key.nvim",
		lazy = false,
		config = require("plugins/whichkey"),
	},
	{
		"folke/trouble.nvim",
	},
	{
		"folke/neodev.nvim",
	},
	{
		"neovim/nvim-lspconfig",
		config = require("plugins/lsp"),
	},
	{
		"williamboman/mason.nvim",
	},
	{
		"williamboman/mason-lspconfig.nvim",
	},
	{
		"jose-elias-alvarez/null-ls.nvim",
		config = require("plugins.nullls"),
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		event = { "UIEnter" },
	},
	{
		"j-hui/fidget.nvim",
		event = { "LspAttach" },
	},
	{
		"hrsh7th/cmp-nvim-lsp",
	},
	{
		"hrsh7th/cmp-buffer",
	},
	{
		"hrsh7th/cmp-path",
	},
	{
		"hrsh7th/nvim-cmp",
	},
	{
		"hrsh7th/cmp-cmdline",
		config = require("plugins/cmp"),
	},
	{
		"L3MON4D3/LuaSnip",
		build = "make install_jsregexp",
	},
	{
		"saadparwaiz1/cmp_luasnip",
	},
	{
		"windwp/nvim-autopairs",
		config = require("plugins.autopairs"),
	},
})
