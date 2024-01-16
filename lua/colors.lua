-- Groups supposed to be transparent
local groups = {
    "Normal",
    "NormalNC",
    "SignColumn",
    "NormalFloat",
    "FloatBorder",
    "Pmenu",
    "TelescopeNormal",
    "TelescopePromptNormal",
    "TelescopeBorder",
    "LineNr",
    "EndOfBuffer",
    "FloatTitle",
    "ZenBg",
    "@neorg.tags.ranged_verbatim.code_block",
    "WinBarNC",
    "WinBar",
    "WinSeparator",
    "TabLineFill",
    "TabLine",
    "CursorLine",
    "CursorLineNr"
}

-- Method that actually makes the stuff above transparent.
-- It simply removes the "bg" highlight from each element
function ColorMyPencils()
    for _, i in pairs(groups) do
        vim.api.nvim_set_hl(0, i, { bg = 'none' })
    end

    -- Getting colorscheme for checking some stuff,
    -- we are basically making sure rose-pine does not use
    -- the shitty pink ColorColumn
    local colorscheme = vim.api.nvim_exec("colorscheme", true)
    if colorscheme == 'rose-pine' then
        print("Current colorscheme: " .. colorscheme)
        vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#2F2F2F" })
    end

    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = 'none' })
end

ColorMyPencils()
