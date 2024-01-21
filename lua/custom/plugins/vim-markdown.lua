return {
    'preservim/vim-markdown',
    config = function()
        vim.cmd([[
            let g:vim_markdown_folding_disabled = 1
            let g:vim_markdown_frontmatter = 1
        ]])
    end
}
