-- Groups supposed to be transparent
local groups = {
    "Normal", "NormalNC", "SignColumn",
    "NormalFloat", "FloatBorder", "Pmenu",
    "TelescopeNormal", "TelescopePromptNormal", "TelescopeBorder",
    "LineNr", "EndOfBuffer", "FloatTitle",
    "ZenBg", "WinBarNC", "WinBar",
    "WinSeparator", "TabLineFill", "TabLine",
    "CursorLine", "CursorLineNr"
}

-- Method that actually makes the stuff above transparent.
--- @param list table
--- @param color string
local function ColorMyPencils(list, color)
    for _, i in pairs(list) do
        vim.api.nvim_set_hl(0, i, { bg = color })
    end

    -- Getting colorscheme for checking some stuff,
    -- we are basically making sure rose-pine does not use
    -- the pink ColorColumn
    local colorscheme = vim.api.nvim_exec("colorscheme", true)
    if colorscheme == 'rose-pine' then
        vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#2F2F2F" })
    end

    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = color })
end

ColorMyPencils(groups, "none")
