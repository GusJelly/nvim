return {
    -- tokyonight
    {
        "folke/tokyonight.nvim",
        lazy = true,
        opts = {
            style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
            light_style = "day", -- The theme is used when the background is set to light
            transparent = true, -- Enable this to disable setting the background color
            terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
            styles = {
                -- Style to be applied to different syntax groups
                -- Value is any valid attr-list value for `:help nvim_set_hl`
                comments = { italic = true },
                keywords = { italic = true },
                functions = {},
                variables = {},
                -- Background styles. Can be "dark", "transparent" or "normal"
                sidebars = "dark", -- style for sidebars, see below
                floats = "dark", -- style for floating windows
            },
            sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
            day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
            hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
            dim_inactive = false, -- dims inactive windows
            lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

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
            flavour = "mocha", -- latte, frappe, macchiato, mocha
            background = { -- :h background
                light = "latte",
                dark = "mocha",
            },
            transparent_background = true, -- disables setting the background color.
            show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
            term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
            dim_inactive = {
                enabled = false, -- dims the background color of inactive window
                shade = "dark",
                percentage = 0.15, -- percentage of the shade to apply to the inactive window
            },
            no_italic = false, -- Force no italic
            no_bold = false, -- Force no bold
            no_underline = false, -- Force no underline
            styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
                comments = { "italic" }, -- Change the style of comments
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
            color_overrides = {},
            custom_highlights = {},
            integrations = {
                cmp = true,
                gitsigns = true,
                nvimtree = true,
                treesitter = true,
                notify = false,
                mini = false,
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
            contrast = "", -- can be "hard", "soft" or empty string
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
            vim.g.modus_green_strings = 1
            vim.g.modus_termtrans_enable = 1
            vim.g.modus_dim_inactive_window = 0
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
            disable_float_background = true,
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

    -- Dracula.nvim
    {
        'Mofiqul/dracula.nvim',
        lazy = true,
        opts = {
            colors = {
                bg = "#282A36",
                fg = "#F8F8F2",
                selection = "#44475A",
                comment = "#6272A4",
                red = "#FF5555",
                orange = "#FFB86C",
                yellow = "#F1FA8C",
                green = "#50fa7b",
                purple = "#BD93F9",
                cyan = "#8BE9FD",
                pink = "#FF79C6",
                bright_red = "#FF6E6E",
                bright_green = "#69FF94",
                bright_yellow = "#FFFFA5",
                bright_blue = "#D6ACFF",
                bright_magenta = "#FF92DF",
                bright_cyan = "#A4FFFF",
                bright_white = "#FFFFFF",
                menu = "#21222C",
                visual = "#3E4452",
                gutter_fg = "#4B5263",
                nontext = "#3B4048",
                white = "#ABB2BF",
                black = "#191A21",
            },
            -- show the '~' characters after the end of buffers
            show_end_of_buffer = true, -- default false
            -- use transparent background
            transparent_bg = true, -- default false
            -- set custom lualine background color
            lualine_bg_color = nil, -- default nil
            -- set italic comment
            italic_comment = true, -- default false
            -- overrides the default highlights with table see `:h synIDattr`
            overrides = {},
            -- You can use overrides as table like this
            -- overrides = {
            --   NonText = { fg = "white" }, -- set NonText fg to white
            --   NvimTreeIndentMarker = { link = "NonText" }, -- link to NonText highlight
            --   Nothing = {} -- clear highlight of Nothing
            -- },
            -- Or you can also use it like a function to get color from theme
            -- overrides = function (colors)
            --   return {
            --     NonText = { fg = colors.white }, -- set NonText fg to white of theme
            --   }
            -- end,
        }
    },

    -- Moonfly
    {
        'bluz71/vim-moonfly-colors',
        name = 'moonfly',
        lazy = true,
    },

    -- Falcon
    {
        'fenetikm/falcon',
        lazy = true,
    },

    -- Onedark
    {
        'navarasu/onedark.nvim',
        lazy = true,
        opts = {
            -- Main options --
            style = 'dark', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
            transparent = true,  -- Show/hide background
            term_colors = true, -- Change terminal color as per the selected theme style
            ending_tildes = true, -- Show the end-of-buffer tildes. By default they are hidden
            cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

            -- toggle theme style ---
            toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
            toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

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
            colors = {}, -- Override default colors
            highlights = {}, -- Override highlight groups

            -- Plugins Config --
            diagnostics = {
                darker = true, -- darker colors for diagnostic
                undercurl = true,   -- use undercurl instead of underline for diagnostics
                background = true,    -- use background color for virtual text
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
            vim.g.gruvbox_material_statusline_style = "original"
            vim.g.gruvbox_material_background = "hard"
            vim.g.gruvbox_material_foreground = "original"
            vim.g.gruvbox_material_enable_bold = 1
            vim.g.gruvbox_material_enable_italic = 1
            vim.g.gruvbox_material_better_performance = 1
            vim.g.gruvbox_material_transparent_background = 1
        end
    },

    -- Edge
    {
        'sainnhe/edge',
        lazy = true,
        init = function()
            vim.g.edge_transparent_background = 1
        end
    },

    -- Sonokai
    {
        'sainnhe/sonokai',
        lazy = true,
        init = function()
            vim.g.sonokai_transparent_background = 1
        end
    },

    -- VScode
    {
        'Mofiqul/vscode.nvim',
        lazy = true,
        opts = {
            -- Alternatively set style in setup
            -- style = 'light'

            -- Enable transparent background
            transparent = true,

            -- Enable italic comment
            italic_comments = true,

            -- Disable nvim-tree background color
            disable_nvimtree_bg = true,

            -- Override colors (see ./lua/vscode/colors.lua)
            color_overrides = {
                vscLineNumber = '#FFFFFF',
            },
        }
    },
}
