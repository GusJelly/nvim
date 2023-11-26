--[[ local groups = {
    'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
    'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
    'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
    'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
    'EndOfBuffer',
} ]]

vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#2f2f2f" })

-- Groups supposed to be transparent
local groups = {
    "Normal", "NormalNC", "SignColumn", "NormalFloat", "Pmenu",
    "TelescopeNormal", "TelescopePromptNormal", "TelescopeBorder",
    "LineNr"
}

function ColorMyPencils()
    for _, i in pairs(groups) do
        vim.api.nvim_set_hl(0, i, { bg = 'none' })
    end
end

ColorMyPencils()
