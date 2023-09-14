return {
    'lervag/vimtex',
    priority = 1000,

    init = function()
        vim.g.vimtex_view_method = 'zathura'
        vim.g.vimtex_view_general_viewer = 'okular'
        vim.g.vimtex_view_general_options = '--unique file:@pdf\\#src:@line@tex'
    end
}