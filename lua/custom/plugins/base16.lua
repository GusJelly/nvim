return {
    'RRethy/nvim-base16',
    priority = 1000,

    config = function()
        -- To disable highlights for supported plugin(s), call the `with_config` function **before** setting the colorscheme.
        -- These are the defaults.
        require('base16-colorscheme').with_config({
            telescope = true,
            indentblankline = true,
            notify = true,
            ts_rainbow = true,
            cmp = true,
            illuminate = true,
        })
    end
}
