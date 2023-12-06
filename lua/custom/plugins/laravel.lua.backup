return {
    'EmranMR/tree-sitter-blade',
    config = function()
        local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
        parser_config.blade = {
            install_info = {
                url = "https://github.com/EmranMR/tree-sitter-blade",
                files = { "src/parser.c" },
                branch = "main",
            },
            filetype = "blade"
        }

        vim.cmd[[
            " Set the *.blade.php file to be filetype of blade 
            augroup BladeFiltypeRelated
              au BufNewFile,BufRead *.blade.php set ft=blade
            augroup END
        ]]
    end
}
