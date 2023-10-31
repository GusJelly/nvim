return {
    "folke/zen-mode.nvim",
    opts = {
        window = {
            backdrop = 1.00, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
            width = 120, -- width of the Zen window
            height = 1, -- height of the Zen window
            options = {
                cursorcolumn = false, -- disable cursor column
            },
        },
        plugins = {
            options = {
                enabled = true,
                ruler = true,        -- disables the ruler text in the cmd line area
                showcmd = true,      -- disables the command in the last line of the screen
                laststatus = 3,
            },
        },
    }
}
