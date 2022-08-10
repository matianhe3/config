local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end



return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

-- UI
  use {
    'folke/tokyonight.nvim',
    config = require("ui.tokyonight")
  }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = require('ui.nvimtree')
  }

  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    tag = 'release',
    config = require('ui.gitsigns')
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons',
      opt = true
    },
    config = require('ui.lualine')
  }

  use {
    'arkav/lualine-lsp-progress'
  }

  use {
    'romgrk/barbar.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons'
    },
    config = require('ui.barbar')
  }

-- TOOLS
  use 'nvim-lua/popup.nvim'

  use {
    'nvim-telescope/telescope.nvim',
    requires = {'nvim-lua/plenary.nvim'},
    config = require('tools.telescope')
  }

  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make'
  }

  use {
    'nvim-telescope/telescope-project.nvim'
  }
  use {
    "nvim-telescope/telescope-frecency.nvim",
    requires = {"tami5/sqlite.lua"}
  }

  use {
  "folke/trouble.nvim",
  requires = "kyazdani42/nvim-web-devicons",
  config = require("tools.trouble")
}

  use {
    "folke/which-key.nvim",
    config = require("tools.whichkey")
  }

  use {
    "nathom/filetype.nvim",
    config = require('tools.filetype')
  }

  use {
    'stevearc/aerial.nvim',
    config = require('tools.aerial')
  }

  use {
    "akinsho/toggleterm.nvim",
    config = require('tools.toggleterm')
  }


--EDITOR
  use {
    "terrortylor/nvim-comment",
    config = require('editor.comment')
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = require('editor.treesitter')
  }

  use {
    'norcalli/nvim-colorizer.lua',
    config = require('editor.colorizer')
  }

  use {
    'sindrets/diffview.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = require('editor.diffview')
  }


--COMPLETION
  use {
    'williamboman/nvim-lsp-installer',
  }

  use {
    'tami5/lspsaga.nvim',
    config = require('cmp.lspsaga')
  }

  use {
    'RishabhRD/nvim-lsputils',
    requires = 'RishabhRD/popfix',
    config = require('cmp.lsputils')
  }

  use {
    "ray-x/lsp_signature.nvim",
    config = require('cmp.lspsignature')
  }

  use {
    'neovim/nvim-lspconfig',
    config = require('cmp.lspconfig')
  }

  use {
    'hrsh7th/cmp-nvim-lsp'
  }

  use {
    'hrsh7th/cmp-buffer'
  }

  use {
    'hrsh7th/cmp-path'
  }

  use {
    'hrsh7th/cmp-cmdline'
  }

  use {
    'hrsh7th/nvim-cmp',
    config = require('cmp.nvimcmp')
  }

  use {
    'L3MON4D3/LuaSnip'
  }

  use {
    'saadparwaiz1/cmp_luasnip'
  }

  use {
    'hrsh7th/cmp-nvim-lua'
  }

  use {
    'SirVer/ultisnips'
  }

  use {
    'quangnguyen30192/cmp-nvim-ultisnips'
  }

  use {
    'windwp/nvim-autopairs',
    config = require('cmp.autopairs')
  }

--LANG
  use {
    'fatih/vim-go',
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
