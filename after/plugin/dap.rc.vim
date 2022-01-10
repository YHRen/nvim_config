lua << END
local dap = require('dap')
dap.adapters.codelldb = function(on_adapter)
  local stdout = vim.loop.new_pipe(false)
  local stderr = vim.loop.new_pipe(false)

  -- CHANGE THIS!
  -- local cmd = vim.env.HOME .. "/Applications/codelldb/extension/adapter/codelldb"
  local cmd = "/home/yren/Applications/codelldb/extension/adapter/codelldb"
  local handle, pid_or_err
  local opts = {
    stdio = {nil, stdout, stderr},
    detached = true,
  }
  handle, pid_or_err = vim.loop.spawn(cmd, opts, function(code)
    stdout:close()
    stderr:close()
    handle:close()
    if code ~= 0 then
      print("codelldb exited with code", code)
    end
  end)
  assert(handle, "Error running codelldb: " .. tostring(pid_or_err))
  stdout:read_start(function(err, chunk)
    assert(not err, err)
    if chunk then
      local port = chunk:match('Listening on port (%d+)')
      print("port: ", port)
      if port then
        vim.schedule(function()
          on_adapter({
            type = 'server',
            host = '127.0.0.1',
            port = port
          })
        end)
      else
        vim.schedule(function()
          require("dap.repl").append(chunk)
        end)
      end
    end
  end)
  stderr:read_start(function(err, chunk)
    assert(not err, err)
    if chunk then
      vim.schedule(function()
        require("dap.repl").append(chunk)
      end)
    end
  end)
end

dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = true,
  },
}

dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp
END

" :help dap-mapping
" :help dap-api 
nnoremap <silent> <leader>dc :lua require'dap'.continue()<CR>
nnoremap <silent> <leader>dnt :lua require'dap'.step_over()<CR>
nnoremap <silent> <leader>dsi :lua require'dap'.step_into()<CR>
nnoremap <silent> <leader>dso :lua require'dap'.step_out()<CR>
nnoremap <silent> <leader>dsb :lua require'dap'.step_back()<CR>
nnoremap <silent> <leader>db :lua require'dap'.toggle_breakpoint()<CR>
nnoremap <silent> <leader>dbl :lua require'dap'.list_breakpoints()<CR>
nnoremap <silent> <leader>dB :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nnoremap <silent> <leader>lp :lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
nnoremap <silent> <leader>dlo :lua require'dap'.repl.open()<CR>
nnoremap <silent> <leader>dlc :lua require'dap'.repl.close()<CR>
nnoremap <silent> <leader>dlt :lua require'dap'.repl.toggle()<CR>
nnoremap <silent> <leader>drc :lua require'dap'.run_to_cursor()<CR>
nnoremap <silent> <leader>drl :lua require'dap'.run_last()<CR>

"" in REPL: read-eval-print-loop
" .exit               Closes the REPL
" .c or .continue     Same as |dap.continue|
" .n or .next         Same as |dap.step_over|
" .into               Same as |dap.step_into|
" .into_target        Same as |dap.step_into{askForTargets=true}|
" .out                Same as |dap.step_out|
" .up                 Same as |dap.up|
" .down               Same as |dap.down|
" .goto               Same as |dap.goto_|
" .scopes             Prints the variables in the current scopes
" .threads            Prints all threads
" .frames             Print the stack frames
" .capabilities       Print the capabilities of the debug adapter
" .b or .back         Same as |dap.step_back|
" .rc or
" .reverse-continue   Same as |dap.reverse_continue|

"""" Widgets 
lua << END
local widgets = require('dap.ui.widgets')
-- require('dap.ui.widgets').hover() -- view expr val in a floating window
-- my_hover.open()
-- local my_sidebar = widgets.sidebar(widgets.frames)
-- my_sidebar.open()
-- local my_float = widgets.centered_float(widgets.scopes)
-- my_float.open()
END

nnoremap <silent> <leader>dwh :lua require'dap.ui.widgets'.hover()<CR>


lua << END
-- dap.adapters.codelldb = function(callback, config)
-- -- specify in your configuration host = your_host , port = your_port
--    callback({ type = "server", host = "127.0.0.1", port = 33547 })
-- end
END
