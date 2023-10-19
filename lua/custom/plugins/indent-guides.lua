return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
        scope = {
            enabled = false,
            char = nil,
            show_start = true,
            show_end = true,
            show_exact_scope = false,
            injected_languages = true,
            highlight = "IblScope",
            priority = 1024,
            include = {
                node_type = {},
            },
        },
        indent = {
            char = "┊",
            tab_char = nil,
            highlight = "IblIndent",
            smart_indent_cap = true,
            priority = 1,
        },
        whitespace = {
            highlight = "IblWhitespace",
            remove_blankline_trail = true,
        },
    }
}
