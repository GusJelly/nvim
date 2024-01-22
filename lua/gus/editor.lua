-- Make visual block mode cool
-- vim.opt.virtualedit = "block"

-- make indent 4 spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- vim.opt.guicursor = ""

-- Line numbers
vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.cursorline = false

-- global status
-- vim.opt.laststatus = 3

-- top bar
-- vim.opt.winbar = "%f %m"

vim.opt.colorcolumn = '80'

-- Concealing for org-mode
vim.opt.conceallevel = 2

-- Colorscheme
vim.cmd [[colorscheme rose-pine]]
vim.o.bg = "dark"
