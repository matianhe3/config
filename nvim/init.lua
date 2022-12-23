-- Basic
local vim = vim
vim.g.encoding = "UTF-8"
vim.o.fileencoding = "utf-8"
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
vim.wo.number = true
vim.wo.cursorline = true
vim.wo.signcolumn = "yes"
vim.wo.colorcolumn = "80"
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftround = true
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2
vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = false
vim.o.incsearch = true
vim.o.showmode = false
vim.o.cmdheight = 2
vim.o.autoread = true
vim.bo.autoread = true
vim.o.wrap = false
vim.wo.wrap = false
vim.o.whichwrap = 'b,s,<,>,[,],h,l'
vim.o.hidden = true
vim.o.mouse = "a"
vim.opt.clipboard:append('unnamedplus')
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
vim.o.updatetime = 300
vim.o.timeoutlen = 100
vim.o.splitbelow = true
vim.o.splitright = true
vim.g.completeopt = "menu,menuone,noselect,noinsert"
vim.o.termguicolors = true
vim.opt.termguicolors = true
vim.o.list = true
vim.o.wildmenu = true
vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.pumheight = 10
vim.o.showtabline = 2
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


-- Key Binding
vim.g.mapleader = " "
vim.g.maplocalleader = " "
local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }
local ts = require('telescope.builtin')

map("n", "<leader>tt", ":Telescope<CR>", opt)
map("n", "<leader>tf", ":Telescope find_files<CR>", opt)
map("n", "<leader>tg", ":Telescope live_grep<CR>", opt)
map("n", "<leader>tc", ":Telescope commands<CR>", opt)
map("n", "<leader>ts", ":Telescope current_buffer_fuzzy_find<CR>", opt)
map("n", "<leader>wx", ":TroubleToggle<CR>", opt)
map("n", "<leader>we", ":NvimTreeToggle<CR>", opt)
map("n", "<leader>wt", ":ToggleTerm<CR>", opt)
map("n", "<leader>wa", ":AerialToggle<CR>", opt)
map("n", "<leader>bn", ":BufferNext<CR>", opt)
map("n", "<leader>bp", ":BufferPrevious<CR>", opt)
map("n", "<leader>bc", ":BufferClose<CR>", opt)
map("n", "<leader>lh", ":Lspsaga lsp_finder<CR>", opt)
map("n", "<leader>ca", ":Lspsaga code_action<CR>", opt)
map("v", "<leader>ca", ":Lspsaga code_action<CR>", opt)
map("n", "<leader>lr", ":Lspsaga rename<CR>", opt)
map("n", "<leader>ld", ":Lspsaga hover_doc<CR>", opt)
map("n", "<leader>le", ":Lspsaga show_line_diagnostics<CR>", opt)
vim.keymap.set("n", "<leader>gd", ts.lsp_definitions)
vim.keymap.set("n", "<leader>gi", ts.lsp_implementations)
vim.keymap.set("n", "<leader>gr", ts.lsp_references)
vim.keymap.set("n", "<leader>lf", function () vim.lsp.buf.format({async=true}) end)

require("plugins")
