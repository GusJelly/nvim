require 'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = { "markdown", "markdown_inline" },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,

    -- List of parsers to ignore installing (or "all")
    ignore_install = {},

    modules = {
        ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
        -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!
        ---@diagnostic disable-next-line: missing-fields
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = { "markdown", "markdown_inline" },

            -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
            -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
            -- the name of the parser)
            -- list of language that will be disabled
            disable = {
                "vimdoc",
            },
        },
    }
}

-- function that enables Treesitter highlight after opening neovim
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        vim.cmd([[
            TSEnable highlight
            TSEnable indent
        ]])
    end
})
