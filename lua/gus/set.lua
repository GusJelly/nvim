--vim.opt.guicursor = ""
vim.opt.cursorline = false

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = false

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- Makes it so we don't get auto indenting for comments cause it annoys me
vim.cmd(":set formatoptions-=cro")

-- Disables NetRW's ugly banner
vim.cmd("let g:netrw_banner=0")
-- Makes NetRW use the "tree view" style
vim.cmd("let g:netrw_liststyle=3")
-- Make NetRW open new split to the right
vim.cmd("let g:netrw_altv=1")

--vim.opt.colorcolumn = "80"

