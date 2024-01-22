-- Using autocommands to change the statusline:
-- autmocmd for the mode changing:
-- 'ModeChanged'

-- Gets the current mode when ran
---@return string
local function getCurrentMode()
    local mode = vim.api.nvim_eval("mode()")
    local modeName = ""

    if mode == 'n' then
        modeName = "Normal"
    elseif mode == 'i' then
        modeName = "Insert"
    elseif mode == 'v' then
        modeName = "Visual"
    elseif mode == 'V' then
        modeName = "Visual Line"
    elseif mode == 'c' then
        modeName = "Command"
    elseif mode == 't' then
        modeName = "Terminal"
    else
        modeName = vim.api.nvim_eval('mode()')
    end

    return modeName
end

-- Creates the statusline string
---@param modeName string
---@param branch string
---@return string
local function createStatuslineString(modeName, branch)
    local statusline = "[" .. modeName .. "] " .. branch .. " %= [%f]%m %= %h%r [%l,%c] [%P %L]"

    return statusline
end

-- Redraws the statusline
local function changeStatusline()
    local branch = ""

    -- Set statusline every time the mode changes
    vim.api.nvim_create_autocmd("ModeChanged", {
        callback = function()
            local modeName = getCurrentMode()

            vim.opt_local.statusline = createStatuslineString(modeName, branch)
        end
    })

    -- Change statusline every time we open a buffer
    vim.api.nvim_create_autocmd("BufEnter", {
        callback = function()
            local modeName = getCurrentMode()

            vim.opt_local.statusline = createStatuslineString(modeName, branch)
        end
    })
end

changeStatusline()
