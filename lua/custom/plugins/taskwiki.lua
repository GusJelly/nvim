return {
    'tools-life/taskwiki',
    init = function()
        vim.g.taskwiki_markup_syntax = "markdown"
        vim.g.taskwiki_dont_fold = "yes"
        vim.g.taskwiki_dont_preserve_folds = "yes"
        vim.g.taskwiki_disable_concealcursor = "yes"
    end
}
