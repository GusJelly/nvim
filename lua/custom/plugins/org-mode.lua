return {
    'nvim-orgmode/orgmode',
    priority = 1000,

    ft = {'org'},

    config = function()
        require('orgmode').setup({
            org_agenda_files = {'~/org/*', '~/my-orgs/**/*'},
            org_default_notes_file = '~/org/refile.org',
        })
    end
}
