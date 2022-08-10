local function treesitter()
  require'nvim-treesitter.configs'.setup {
    ensure_installed = { "python", "lua", "go", "javascript", "json",
                         "bash", "css", "html", "tsx", "vue", "yaml",
                         "typescript" },
    sync_install = false,

    ignore_install = {},

    highlight = {
      enable = true,
      disable = {},
      additional_vim_regex_highlighting = false,
    },
    indent = {
      enable = true
    }
  }
end

return treesitter
