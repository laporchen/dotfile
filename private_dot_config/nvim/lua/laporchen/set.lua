vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.numberwidth = 5

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.smartcase = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"


vim.opt.updatetime = 50

vim.opt.colorcolumn = "140"

vim.g.mapleader = " "

vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"

vim.cmd([[
set laststatus=2
set statusline=\ 
set statusline+=%f
set statusline+=%=
set statusline+=%k

]])

