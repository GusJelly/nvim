return {
    -- catppuccin
    {
        "catppuccin/nvim",
        name = "catppuccin",
        opts = {
            flavour = "latte", -- latte, frappe, macchiato, mocha
            background = {     -- :h background
                light = "latte",
                dark = "mocha",
            },
            transparent_background = true, -- disables setting the background color.
            show_end_of_buffer = true,     -- shows the '~' characters after the end of buffers
            term_colors = true,            -- sets terminal colors (e.g. `g:terminal_color_0`)
            dim_inactive = {
                enabled = false,           -- dims the background color of inactive window
                shade = "dark",
                percentage = 0.15,         -- percentage of the shade to apply to the inactive window
            },
            no_italic = false,             -- Force no italic
            no_bold = false,               -- Force no bold
            no_underline = false,          -- Force no underline
            styles = {                     -- Handles the styles of general hi groups (see `:h highlight-args`):
                comments = { "italic" },   -- Change the style of comments
                conditionals = { "italic" },
                loops = {},
                functions = {},
                keywords = {},
                strings = {},
                variables = {},
                numbers = {},
                booleans = {},
                properties = {},
                types = {},
                operators = {},
            },
            color_overrides = {
                -- latte = {
                --     base = "#ffffff"
                -- },
            },
            custom_highlights = {},
            integrations = {
                cmp = true,
                gitsigns = true,
                nvimtree = true,
                treesitter = true,
                notify = true,
                mini = true,
                -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
            },
        },
    },

    -- Modus-themes from emacs
    {
        'GusJelly/modus-themes.nvim',
        opts = {
            -- Theme comes in two styles `modus_operandi` and `modus_vivendi`
            -- `auto` will automatically set style based on background set with vim.o.background
            style = "auto",
            variant = "default", -- Theme comes in four variants `default`, `tinted`, `deuteranopia`, and `tritanopia`
            styles = {
                -- Style to be applied to different syntax groups
                -- Value is any valid attr-list value for `:help nvim_set_hl`
                comments = { italic = true },
                keywords = { italic = true },
                functions = {},
                variables = {},
            },

            --- You can override specific color groups to use other groups or a hex color
            --- function will be called with a ColorScheme table
            ---@param colors ColorScheme
            on_colors = function(colors) end,

            --- You can override specific highlights to use other groups or a hex color
            --- function will be called with a Highlights and ColorScheme table
            ---@param highlights Highlights
            ---@param colors ColorScheme
            on_highlights = function(highlights, colors) end,
        },
    },

    -- Rose-Pine
    {
        'rose-pine/neovim',
        name = 'rose-pine',
        opts = {
            --- @usage 'auto'|'main'|'moon'|'dawn'
            variant = 'auto',
            --- @usage 'main'|'moon'|'dawn'
            dark_variant = 'main',
            bold_vert_split = false,
            dim_nc_background = false,
            disable_background = true,
            disable_float_background = false,
            disable_italics = false,

            --- @usage string hex value or named color from rosepinetheme.com/palette
            groups = {
                background = 'base',
                background_nc = '_experimental_nc',
                panel = 'surface',
                panel_nc = 'base',
                border = 'highlight_med',
                comment = 'muted',
                link = 'iris',
                punctuation = 'subtle',

                error = 'love',
                hint = 'iris',
                info = 'foam',
                warn = 'gold',

                headings = {
                    h1 = 'iris',
                    h2 = 'foam',
                    h3 = 'rose',
                    h4 = 'gold',
                    h5 = 'pine',
                    h6 = 'foam',
                }
                -- or set all headings at once
                -- headings = 'subtle'
            },

            -- Change specific vim highlight groups
            -- https://github.com/rose-pine/neovim/wiki/Recipes
            highlight_groups = {
                ColorColumn = { bg = 'rose' },

                -- Blend colours against the "base" background
                CursorLine = { bg = 'foam', blend = 10 },
                StatusLine = { fg = 'love', bg = 'love', blend = 10 },

                -- By default each group adds to the existing config.
                -- If you only want to set what is written in this config exactly,
                -- you can set the inherit option:
                Search = { bg = 'gold', inherit = false },
            }
        }
    },

    -- Gruvbox-Material
    {
        'sainnhe/gruvbox-material',
        init = function()
            -- vim.g.gruvbox_material_ui_contrast = "high"
            -- vim.g.gruvbox_material_float_style = "dim"
            -- vim.g.gruvbox_material_statusline_style = "original"
            -- vim.g.gruvbox_material_background = "hard"
            -- vim.g.gruvbox_material_foreground = "original"
            -- vim.g.gruvbox_material_enable_bold = 1
            -- vim.g.gruvbox_material_enable_italic = 1
            -- vim.g.gruvbox_material_better_performance = 1
            -- vim.g.gruvbox_material_transparent_background = 1
        end
    },

    -- Edge from gruvbox_material guy
    {
        'sainnhe/edge',
        lazy = true,
        init = function()
            vim.g.edge_enable_italic = 1
            vim.g.edge_style = 'default'
            vim.g.edge_transparent_background = 1
        end
    },

    {
        'projekt0n/github-nvim-theme',
        config = function()
            require('github-theme').setup({
                options = {
                    -- Compiled file's destination location
                    compile_path = vim.fn.stdpath('cache') .. '/github-theme',
                    compile_file_suffix = '_compiled', -- Compiled file suffix
                    hide_end_of_buffer = true,         -- Hide the '~' character at the end of the buffer for a cleaner look
                    hide_nc_statusline = true,         -- Override the underline style for non-active statuslines
                    transparent = true,               -- Disable setting background
                    terminal_colors = true,            -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
                    dim_inactive = false,              -- Non focused panes set to alternative background
                    module_default = true,             -- Default enable value for modules
                    styles = {                         -- Style to be applied to different syntax groups
                        comments = 'NONE',             -- Value is any valid attr-list value `:help attr-list`
                        functions = 'NONE',
                        keywords = 'NONE',
                        variables = 'NONE',
                        conditionals = 'NONE',
                        constants = 'NONE',
                        numbers = 'NONE',
                        operators = 'NONE',
                        strings = 'NONE',
                        types = 'NONE',
                    },
                    inverse = { -- Inverse highlight for different types
                        match_paren = false,
                        visual = false,
                        search = false,
                    },
                    darken = { -- Darken floating windows and sidebar-like windows
                        floats = true,
                        sidebars = {
                            enabled = true,
                            list = {}, -- Apply dark background to specific windows
                        },
                    },
                    modules = { -- List of various plugins and additional options
                        -- ...
                    },
                },
                palettes = {},
                specs = {},
                groups = {},
            })
        end,
    },
}
