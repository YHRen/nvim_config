local R = {}
-- replace a list or nested list to c++ array
-- e.g. [1, 2, 3] -> vector<int> v = {1, 2, 3};
-- e.g. [[0,1],[0,2]] -> vector<vector<int>> mtx = {{0,1},{0,2}};
-- e.g. ["abc","ab","bc","b"] -> vector<string> v = {"abc","ab","bc","b"};

R.replace_bracket = function()
    local line = vim.api.nvim_get_current_line()
    local is_matrix = string.find(line, "%[%[") ~= nil 
    local is_string = string.find(line, "%d") == nil
    local type = is_string and "string" or "int"
    line = string.gsub(line, "%[", "{")
    line = string.gsub(line, "%]", "}")
    if is_matrix then
        vim.api.nvim_set_current_line("vector<vector<" .. type .. ">> mtx = " .. line .. ";")
    else
        vim.api.nvim_set_current_line("vector<" .. type .. "> v = " .. line .. ";")
    end
end

return R
