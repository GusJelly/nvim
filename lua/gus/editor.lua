-- Make visual block mode cool
-- vim.opt.virtualedit = "block"

-- make indent 4 spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- Line numbers
vim.opt.relativenumber = true
vim.opt.number = true
-- Color lines
vim.opt.signcolumn = 'yes'
vim.opt.cursorline = false
vim.opt.colorcolumn = '80'
-- Concealing for org-mode
vim.opt.conceallevel = 2

-- Colorscheme
vim.cmd [[colorscheme rose-pine]]
vim.o.bg = "dark"
