return {
    'vimwiki/vimwiki',
    init = function()
        vim.cmd([[
            set nocompatible
            filetype plugin on
            syntax on

            let g:vimwiki_list = [{'path': '~/vimwiki/',
                                  \ 'syntax': 'markdown', 'ext': 'md'}]
        ]])
    end
}
