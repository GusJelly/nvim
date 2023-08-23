return {
    'vimwiki/vimwiki',
    init = function()
        vim.cmd[[set nocompatible]]
        vim.cmd[[filetype plugin on]]
        vim.cmd[[syntax on]]
        vim.g.vimwiki_list = {
            {
                path = '~/vimwiki',
                syntax = 'markdown',
                ext = '.md'
            }
        }
    end
}
