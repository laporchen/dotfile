vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.wrap = false

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.numberwidth = 5

vim.opt.smartindent = true

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
vim.opt.mouse = ""

vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"

vim.cmd([[
set laststatus=2
set statusline=\ 
set statusline+=%f
set statusline+=%=
set statusline+=%l
set statusline+=\ 
set statusline+=%c
set statusline+=\ 
set statusline+=%k

]])

