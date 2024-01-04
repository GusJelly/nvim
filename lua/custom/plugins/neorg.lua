return {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },

    config = function()
        require("neorg").setup {
            load = {
                ["core.keybinds"] = {
                    config = {
                        hook = function(keybinds)
                            keybinds.map("norg", "n", "<leader>ec", "<cmd>Neorg keybind norg core.looking-glass.magnify-code-block<CR>")
                            -- Sometimes you may simply want to rebind the Neorg action something is bound to
                            -- versus remapping the entire keybind. This remap is essentially the same as if you
                            -- did `keybinds.remap("norg", "n", "<C-Space>, "<cmd>Neorg keybind norg core.qol.todo_items.todo.task_done<CR>")
                            -- keybinds.remap_event("norg", "n", "<C-Space>", "core.qol.todo_items.todo.task_done")
                        end,
                    }
                },
                ["core.defaults"] = {},  -- Loads default behaviour
                ["core.concealer"] = {}, -- Adds pretty icons to your documents
                ["core.dirman"] = {      -- Manages Neorg workspaces
                    config = {
                        workspaces = {
                            notes = "~/notes",
                            programming = "~/notes/programming",
                            life = "~/notes/life"
                        },
                        default_workspace = "notes"
                    },
                },
                ["core.summary"] = {},
                ["core.ui"] = {},
            },
        }
    end,
}
