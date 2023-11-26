-- Colorscheme
vim.cmd [[colorscheme gruvbox-material]]
-- require('colorbuddy').colorscheme('gruvbuddy')
vim.o.bg = "dark"
vim.cmd [[highlight NormalNC guibg=none]]

-- Highlight changes needs to come after the background and color scheme
vim.cmd [[highlight WinSeparator guibg=none]]

-- Disable cursor animations without bugs
-- vim.opt.guicursor = "n-v-c-sm:block"
vim.opt.guicursor = ""

-- Line numbers
vim.opt.relativenumber = true
vim.opt.number = true

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
vim.opt.cursorline = false

-- Concealing for org-mode
vim.opt.conceallevel = 2

-- Markdown settings:
vim.cmd [[set nocompatible]]
vim.cmd [[filetype plugin on]]
vim.cmd [[syntax on]]

-- toggle line wrap:
vim.opt.wrap = true

-- NetRW configuration
-- vim.g.netrw_liststyle = 3
vim.g.netrw_cursor = 0
