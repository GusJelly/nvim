-- Testing some nvim apis


-- Using autocommands to change the statusline:
-- autmocmd for the mode changing:
-- 'ModeChanged'
function ChangeStatusline()
    vim.opt.statusline = "[Normal] %= [%f]%m %= %h%r %l,%c [%P]"

    vim.api.nvim_create_autocmd("ModeChanged", {
        group = vim.api.nvim_create_augroup("Gustavo's barChanger", { clear = true }),

        callback = function()
            local mode = vim.api.nvim_eval('mode()')
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

            local statusline = "[" .. modeName .. "] %= [%f]%m %= %h%r %l,%c [%P]"
            vim.opt.statusline = statusline
        end
    })
end

ChangeStatusline()
