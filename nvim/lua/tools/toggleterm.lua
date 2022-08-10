local function toggleterm ()
  local vim = vim
  require("toggleterm").setup{
    -- size can be a number or function which is passed the current terminal
    size = function(term)
      if term.direction == "horizontal" then
        return 15
      elseif term.direction == "vertical" then
        return vim.o.columns * 0.4
      end
    end,
    open_mapping = [[<c-\>]],
    hide_numbers = true,
    shade_filetypes = {},
    highlights = {
      Normal = {
        guibg = 7,
      },
      NormalFloat = {
        link = 'Normal'
      },
      FloatBorder = {
        guifg = 4,
        guibg = 4,
      },
    },
    shade_terminals = true,
    shading_factor = '1', -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
    start_in_insert = true,
    insert_mappings = true, -- whether or not the open mapping applies in insert mode
    terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
    persist_size = true,
    direction = 'float',
    close_on_exit = true, -- close the terminal window when the process exits
    shell = vim.o.shell, -- change the default shell
    float_opts = {
      border = 'single',
      width = 80,
      height = 30,
      winblend = 10,
    }
  }
end

return toggleterm
