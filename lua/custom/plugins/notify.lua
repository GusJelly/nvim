return {
    'rcarriga/nvim-notify',
    init = function()
        vim.o.termguicolors = true
    end,
    opts = {
        render = "minimal",
        background_colour = "#000000"
    }
}
