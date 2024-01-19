-- Colorscheme
vim.cmd [[colorscheme base16-ayu-dark]]
vim.o.bg = "dark"
-- Alternatively, you can provide a table specifying your colors to the setup function.
require('base16-colorscheme').setup({
    base00 = "#282c34",
    base01 = "#32363e",
    base02 = "#3c4048",
    base03 = "#4e525a",
    base04 = "#5a5e66",
    base05 = "#a7aebb",
    base06 = "#b3bac7",
    base07 = "#bbc2cf",
    base08 = "#ff6c6b",
    base09 = "#ea9558",
    base0A = "#ECBE7B",
    base0B = "#98be65",
    base0C = "#66c4ff",
    base0D = "#dc8ef3",
    base0E = "#48a6e6",
    base0F = "#c85a50",

})

vim.opt.guicursor = ""

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
