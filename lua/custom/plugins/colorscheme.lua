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
            transparent_background = false, -- disables setting the background color.
            show_end_of_buffer = false,     -- shows the '~' characters after the end of buffers
            term_colors = true,             -- sets terminal colors (e.g. `g:terminal_color_0`)
            dim_inactive = {
                enabled = false,            -- dims the background color of inactive window
                shade = "dark",
                percentage = 0.15,          -- percentage of the shade to apply to the inactive window
            },
            no_italic = false,              -- Force no italic
            no_bold = false,                -- Force no bold
            no_underline = false,           -- Force no underline
            styles = {                      -- Handles the styles of general hi groups (see `:h highlight-args`):
                comments = { "italic" },    -- Change the style of comments
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
            disable_background = false,
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

    -- Gruvbox
    {
        'ellisonleao/gruvbox.nvim',
        opts = {
            contrast = "hard", -- can be "hard", "soft" or empty string
            italic = {
                strings = true,
                emphasis = true,
                comments = true,
                operators = false,
                folds = true,
            }
        }
    },

    -- Kanagawa
    {
        'rebelot/kanagawa.nvim',
        opts = {
            compile = false,  -- enable compiling the colorscheme
            undercurl = true, -- enable undercurls
            commentStyle = { italic = true },
            functionStyle = {},
            keywordStyle = { italic = true },
            statementStyle = { bold = true },
            typeStyle = {},
            transparent = false,   -- do not set background color
            dimInactive = false,   -- dim inactive window `:h hl-NormalNC`
            terminalColors = true, -- define vim.g.terminal_color_{0,17}
            colors = {             -- add/modify theme and palette colors
                palette = {},
                theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
            },
            overrides = function(colors) -- add/modify highlights
                return {}
            end,
            theme = "wave",    -- Load "wave" theme when 'background' option is not set
            background = {     -- map the value of 'background' option to a theme
                dark = "wave", -- try "dragon" !
                light = "lotus"
            },
        }
    },

    -- onedark
    {
        'navarasu/onedark.nvim',
        opts = {}
    },

    -- Material neovim
    {
        'marko-cerovac/material.nvim',
        config = function()
            require('material').setup({
                contrast = {
                    terminal = false, -- Enable contrast for the built-in terminal
                    sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
                    floating_windows = false, -- Enable contrast for floating windows
                    cursor_line = false, -- Enable darker background for the cursor line
                    non_current_windows = false, -- Enable contrasted background for non-current windows
                    filetypes = {},  -- Specify which filetypes get the contrasted (darker) background
                },

                styles = { -- Give comments style such as bold, italic, underline etc.
                    comments = { --[[ italic = true ]] },
                    strings = { --[[ bold = true ]] },
                    keywords = { --[[ underline = true ]] },
                    functions = { --[[ bold = true, undercurl = true ]] },
                    variables = {},
                    operators = {},
                    types = {},
                },

                plugins = { -- Uncomment the plugins that you use to highlight them
                    -- Available plugins:
                    "dap",
                    -- "dashboard",
                    -- "eyeliner",
                    "fidget",
                    -- "flash",
                    "gitsigns",
                    "harpoon",
                    -- "hop",
                    -- "illuminate",
                    -- "indent-blankline",
                    -- "lspsaga",
                    -- "mini",
                    -- "neogit",
                    -- "neotest",
                    -- "neo-tree",
                    "neorg",
                    -- "noice",
                    -- "nvim-cmp",
                    -- "nvim-navic",
                    -- "nvim-tree",
                    "nvim-web-devicons",
                    -- "rainbow-delimiters",
                    -- "sneak",
                    "telescope",
                    -- "trouble",
                    "which-key",
                },

                disable = {
                    colored_cursor = false, -- Disable the colored cursor
                    borders = false, -- Disable borders between verticaly split windows
                    background = false, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
                    term_colors = false, -- Prevent the theme from setting terminal colors
                    eob_lines = false -- Hide the end-of-buffer lines
                },

                high_visibility = {
                    lighter = false, -- Enable higher contrast text for lighter style
                    darker = false -- Enable higher contrast text for darker style
                },

                lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )

                async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)

                custom_colors = nil, -- If you want to override the default colors, set this to a function

                custom_highlights = {}, -- Overwrite highlights with your own
            })
            vim.g.material_style = "darker"
        end
    }
}
