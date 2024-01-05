return {
    'preservim/vim-markdown',
    branch = 'master',
    require = { 'godlygeek/tabular' },

    init = function()
        vim.cmd([[
            " set conceallevel=2
            let g:vim_markdown_no_extensions_in_markdown=1
            let g:vim_markdown_autowrite=1
            let g:vim_markdown_folding_disabled=1
        ]])
    end
}
