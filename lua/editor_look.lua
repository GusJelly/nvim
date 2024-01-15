-- Colorscheme
vim.cmd [[colorscheme catppuccin]]
vim.o.bg = "dark"

vim.opt.guicursor = ""

-- Line numbers
vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.cursorline = true

-- global status
vim.opt.laststatus = 3

-- top bar
vim.opt.winbar = "%f %m"

vim.opt.scrolloff = 8
vim.opt.colorcolumn = '80'

-- make indent 4 spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Concealing for org-mode
vim.opt.conceallevel = 2

-- toggle line wrap:
vim.opt.wrap = true

-- NetRW configuration
-- vim.g.netrw_liststyle = 3
vim.g.netrw_cursor = 0
vim.g.netrw_banner = 0
vim.g.netrw_bufsettings="rnu number"
