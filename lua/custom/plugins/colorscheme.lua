return {
    -- tokyonight
    {
        "folke/tokyonight.nvim",
        lazy = true,
        opts = {
            style = "night",        -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
            light_style = "day",    -- The theme is used when the background is set to light
            transparent = true,    -- Enable this to disable setting the background color
            terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
            styles = {
                -- Style to be applied to different syntax groups
                -- Value is any valid attr-list value for `:help nvim_set_hl`
                comments = { italic = true },
                keywords = { italic = true },
                functions = {},
                variables = {},
                -- Background styles. Can be "dark", "transparent" or "normal"
                sidebars = "dark",            -- style for sidebars, see below
                floats = "dark",              -- style for floating windows
            },
            sidebars = { "qf", "help" },      -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
            day_brightness = 1.0,             -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
            hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
            dim_inactive = false,             -- dims inactive windows
            lualine_bold = true,             -- When `true`, section headers in the lualine theme will be bold

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

    -- catppuccin
    {
        "catppuccin/nvim",
        lazy = true,
        name = "catppuccin",
        opts = {
            flavour = "latte", -- latte, frappe, macchiato, mocha
            background = {     -- :h background
                light = "latte",
                dark = "mocha",
            },
            transparent_background = false, -- disables setting the background color.
            show_end_of_buffer = true,     -- shows the '~' characters after the end of buffers
            term_colors = true,           -- sets terminal colors (e.g. `g:terminal_color_0`)
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

    -- Gruvbox
    {
        'ellisonleao/gruvbox.nvim',
        lazy = true,
        opts = {
            undercurl = true,
            underline = true,
            bold = true,
            italic = {
                strings = false,
                comments = true,
                operators = false,
                folds = true,
            },
            strikethrough = true,
            invert_selection = false,
            invert_signs = false,
            invert_tabline = false,
            invert_intend_guides = false,
            inverse = true, -- invert background for search, diffs, statuslines and errors
            contrast = "",  -- can be "hard", "soft" or empty string
            palette_overrides = {},
            overrides = {},
            dim_inactive = false,
            transparent_mode = true,
        }
    },

    -- Modus-themes from emacs
    {
        'ishan9299/modus-theme-vim',
        lazy = true,
        init = function()
            vim.g.modus_dim_inactive_window = 0
            vim.g.modus_yellow_comments = 1
            vim.g.modus_green_strings = 1
            vim.g.modus_faint_syntax = 0
            vim.g.modus_cursorline_intense = 0
            -- vim.g.modus_termtrans_enable = 1
        end
    },

    -- Rose-Pine
    {
        'rose-pine/neovim',
        lazy = true,
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

    -- Moonfly
    {
        'bluz71/vim-moonfly-colors',
        name = 'moonfly',
        lazy = true,
    },

    -- Onedark
    {
        'navarasu/onedark.nvim',
        lazy = true,
        opts = {
            -- Main options --
            style = 'dark',               -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
            transparent = false,          -- Show/hide background
            term_colors = true,           -- Change terminal color as per the selected theme style
            ending_tildes = true,         -- Show the end-of-buffer tildes. By default they are hidden
            cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

            -- toggle theme style ---
            toggle_style_key = nil,                                                              -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
            toggle_style_list = { 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light' }, -- List of styles to toggle between

            -- Change code style ---
            -- Options are italic, bold, underline, none
            -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
            code_style = {
                comments = 'italic',
                keywords = 'none',
                functions = 'bold',
                strings = 'none',
                variables = 'none'
            },

            -- Lualine options --
            lualine = {
                transparent = false, -- lualine center bar transparency
            },

            -- Custom Highlights --
            colors = {},     -- Override default colors
            highlights = {}, -- Override highlight groups

            -- Plugins Config --
            diagnostics = {
                darker = true,     -- darker colors for diagnostic
                undercurl = true,  -- use undercurl instead of underline for diagnostics
                background = true, -- use background color for virtual text
            },
        }
    },

    -- Gruvbox-Material
    {
        'sainnhe/gruvbox-material',
        lazy = true,
        init = function()
            vim.g.gruvbox_material_ui_contrast = "high"
            vim.g.gruvbox_material_float_style = "dim"
            -- vim.g.gruvbox_material_statusline_style = "original"
            -- vim.g.gruvbox_material_background = "hard"
            vim.g.gruvbox_material_foreground = "original"
            vim.g.gruvbox_material_enable_bold = 1
            vim.g.gruvbox_material_enable_italic = 1
            vim.g.gruvbox_material_better_performance = 1
            vim.g.gruvbox_material_transparent_background = 0
        end
    },

    -- Edge from gruvbox_material guy
    {
        'sainnhe/edge',
        lazy = true,
        init = function()
            vim.g.edge_enable_italic = 1
        end
    },

    {
        'sainnhe/sonokai',
        lazy = true,
        init = function()
            vim.g.sonokai_style = 'andromeda'
            vim.g.sonokai_better_performance = 1
        end
    },

    -- mellow
    {
        'kvrohit/mellow.nvim',
        lazy = true,
    },

    {
        'Mofiqul/vscode.nvim',
        config = function()
            local c = require('vscode.colors').get_colors()
            require('vscode').setup({
                -- Alternatively set style in setup
                -- style = 'light'

                -- Enable transparent background
                transparent = false,

                -- Enable italic comment
                italic_comments = true,

                -- Disable nvim-tree background color
                disable_nvimtree_bg = true,

                -- Override colors (see ./lua/vscode/colors.lua)
                color_overrides = {
                    -- vscLineNumber = '#000000',
                },

                -- Override highlight groups (see ./lua/vscode/theme.lua)
                group_overrides = {
                    -- this supports the same val table as vim.api.nvim_set_hl
                    -- use colors from this colorscheme by requiring vscode.colors!
                    Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
                }
            })
        end
    },

    {
        'NLKNguyen/papercolor-theme',
        lazy = true,
    },

    {
        'projekt0n/github-nvim-theme',
        lazy = false,    -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            require('github-theme').setup({
                options = {
                    -- Compiled file's destination location
                    compile_path = vim.fn.stdpath('cache') .. '/github-theme',
                    compile_file_suffix = '_compiled', -- Compiled file suffix
                    hide_end_of_buffer = true,         -- Hide the '~' character at the end of the buffer for a cleaner look
                    hide_nc_statusline = true,         -- Override the underline style for non-active statuslines
                    transparent = false,                -- Disable setting background
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
                        floats = false,
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

    {
        'tjdevries/gruvbuddy.nvim',
        lazy = true
    },

    {
        'NTBBloodbath/doom-one.nvim',
		lazy = true,
    }

}
