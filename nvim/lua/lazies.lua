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
		config = require("plugins.tokyonight"),
	},

	{
		"nvim-tree/nvim-web-devicons",
		event = { "VimEnter" },
	},

	{
		"folke/which-key.nvim",
		lazy = false,
		config = require("plugins.whichkey"),
	},

	{
		"folke/trouble.nvim",
	},

	{
		"folke/neodev.nvim",
		lazy = true,
	},

	{
		"williamboman/mason.nvim",
		event = { "VimEnter" },
		config = require("plugins.mason"),
	},

	{
		"neovim/nvim-lspconfig",
		config = require("plugins.lsp"),
		dependencies = {
			{
				"williamboman/mason-lspconfig.nvim",
				config = require("plugins.masonlsp"),
			},
		},
	},

	{
		"j-hui/fidget.nvim",
		event = { "LspAttach" },
		config = require("plugins.fidget"),
	},

	{
		"jose-elias-alvarez/null-ls.nvim",
		config = require("plugins.nullls"),
		dependencies = {
			{ "nvim-lua/plenary.nvim" },
		},
		event = { "UIEnter" },
	},

	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		dependencies = {
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "hrsh7th/cmp-cmdline" },
			{ "saadparwaiz1/cmp_luasnip" },
		},
		config = require("plugins.cmp"),
	},

	{
		"L3MON4D3/LuaSnip",
		build = "make install_jsregexp",
		dependencies = {
			{ "rafamadriz/friendly-snippets" },
		},
		lazy = true,
	},

	{
		"windwp/nvim-autopairs",
		config = require("plugins.autopairs"),
		event = { "InsertEnter" },
	},

	{
		"lukas-reineke/indent-blankline.nvim",
		event = { "UIEnter" },
	},

	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		dependencies = {
			{ "mrjones2014/nvim-ts-rainbow" },
			{ "indp/nvim-ts-autotag" },
			{ "JoosepAlviste/nvim-ts-context-commentstring" },
			{ "nvim-treesitter/nvim-treesitter-textobjects" },
			{ "nvim-lua/plenary.nvim" },
		},
		config = require("plugins.treesitter"),
		event = { "UIEnter" },
	},

	{
		"numToStr/Comment.nvim",
		dependencies = { { "JoosepAlviste/nvim-ts-context-commentstring" } },
		config = require("plugins.comment"),
		event = { "VeryLazy" },
	},

	{
		"RRethy/vim-illuminate",
		event = { "UIEnter" },
	},

	{
		"kylechui/nvim-surround",
		config = require("plugins.surround"),
		event = { "VeryLazy" },
	},
})
