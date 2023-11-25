return {
    'nvim-orgmode/orgmode',
    dependencies = {
        { 'nvim-treesitter/nvim-treesitter', lazy = true },
    },
    event = 'VeryLazy',
    config = function()
        -- Load treesitter grammar for org
        require('orgmode').setup_ts_grammar()

        -- Setup treesitter
        ---@diagnostic disable-next-line: missing-fields
        require('nvim-treesitter.configs').setup({
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = { 'org' },
            },
            ensure_installed = { 'org' },
        })

        -- Setup orgmode
        require('orgmode').setup({
            org_agenda_files = '~/org/**/*',
            org_default_notes_file = '~/org/refile.org',
            org_hide_emphasis_markers = true,
            org_hide_leading_stars = false
        })

        -- Change some highlight groups based on the current theme
        if vim.g.colors_name == "modus" and vim.o.bg == "light"  then
            vim.cmd [[highlight OrgAgendaScheduled guifg='#ffb4af']]
            vim.cmd [[highlight OrgDONE guifg='#046C31']]
            vim.cmd [[highlight OrgTODO guifg='#B4292D']]
            vim.cmd [[highlight OrgAgendaDeadline guifg='#B4292D']]
        end

        vim.g.orgmode_org_hide_leading_stars = true
    end,
}
