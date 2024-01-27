---@diagnostic disable-next-line: missing-fields
require('obsidian').setup({
    workspaces = {
        {
            name = "personal",
            path = "~/vaults/personal"
        },
        {
            name = "work",
            path = "~/vaults/work",
        },
    }
})
