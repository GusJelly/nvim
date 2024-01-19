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

-- Gets the current git branch
---@return string
-- local function getCurrentBranch()
--     local branch = vim.fn.system("git branch --show-current 2> /dev/null | tr -d '\n'")
--     if branch == nil then
--         return ""
--     end
--
--     return branch
-- end

-- Creates the statusline string
---@param modeName string
---@param branch string
---@return string
local function createStatuslineString(modeName, branch)
    local statusline = "[" .. modeName .. "] " .. branch .. " %= [%f]%m %= %h%r [%l,%c] [%P]"

    return statusline
end

-- Actually redraws the statusline
local function changeStatusline()
    -- local branch = getCurrentBranch()
    -- Set statusline every time the mode changes
    vim.api.nvim_create_autocmd("ModeChanged", {
        callback = function()
            local modeName = getCurrentMode()

            vim.opt_local.statusline = createStatuslineString(modeName, "")
        end
    })

    -- Change statusline every time we open a buffer
    vim.api.nvim_create_autocmd("BufEnter", {
        callback = function()
            local modeName = getCurrentMode()
            -- local newBranch = getCurrentBranch()

            vim.opt_local.statusline = createStatuslineString(modeName, "")
        end
    })
end

changeStatusline()
