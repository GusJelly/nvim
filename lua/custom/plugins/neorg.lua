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
                        end,
                    }
                },
                ["core.defaults"] = {},  -- Loads default behaviour
                ["core.concealer"] = {
                    config = {
                        icon_preset = "basic",
                        init_open_folds = "always"
                    }
                }, -- Adds pretty icons to your documents
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
                ["core.ui.calendar"] = {},
                ["core.export"] = {},
                ["core.export.markdown"] = {
                    config = {
                        extension = "md"
                    }
                }
            },
        }
    end,
}
