local R = {}
local Path = require('plenary.path')
R.find_vimrc_files = function()
    local opts = {
        search_dirs = { Path:new(vim.env.HOME, '.config', 'nvim'):absolute() },
    }
    require('telescope.builtin').find_files(opts)
end

R.print_hello = function()
    print("this is a hello function")
end

return R
