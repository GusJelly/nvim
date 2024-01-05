return {
    'vimwiki/vimwiki',

    init = function()
        -- Markdown settings:
        vim.cmd[[set nocompatible]]
        vim.cmd[[filetype plugin on]]
        vim.cmd[[syntax on]]

        -- Change vimwiki syntax to markdown:
        vim.g.vimwiki_list = {
            {
                path = '~/PersonalWiki',
                syntax = 'markdown',
                ext = '.md'
            }
        }
    end
}
