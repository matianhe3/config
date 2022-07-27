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

-- Key Binding
vim.g.mapleader = " "
vim.g.maplocalleader = " "
local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

map("n", "<leader>t", ":Telescope<CR>", opt)
map("n", "<leader>f", ":Telescope find_files<CR>", opt)
map("n", "<leader>g", ":Telescope live_grep<CR>", opt)
map("n", "<leader>c", ":Telescope commands<CR>", opt)
map("n", "<leader>s", ":Telescope current_buffer_fuzzy_find<CR>", opt)
map("n", "<F2>", ":NvimTreeToggle<CR>", opt)
map("n", "<leader>at", ":AerialToggle<CR>", opt)
map("n", "<leader>bn", ":BufferLineCycleNext<CR>", opt)
map("n", "<leader>bp", ":BufferLineCyclePrev<CR>", opt)
map("n", "<leader>bc", ":BufferLinePickClose<CR>", opt)

require("plugins")
