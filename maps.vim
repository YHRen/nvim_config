""" command line mapping to behave like bash
cnoremap <C-A> <Home>
cnoremap <C-F> <Right>
cnoremap <C-B> <Left>

nnoremap <buffer><Leader>yy :%y<CR> """ copy all
nnoremap <Leader>time :pu=strftime('%c')<CR> """ get time
nnoremap <Leader>pl i[link](<C-R>*)<ESC> """ insert link from clip
nnoremap <Leader>so :source $HOME/.config/nvim/init.vim<cr> """ reload

""" in my package ./lua/ray.lua
nnoremap <Leader>vrc :lua require("ray").find_vimrc_files() <cr>

""" tab related
nnoremap <Leader>tn :tabnew<cr> """ <c-w> T move window to new tab
nnoremap <Leader>tc :tabclose<cr> """ gt gT move around
nnoremap <Leader>tt :tabnew \| terminal<cr> i

""" telescope
nnoremap <silent> <leader>find <cmd>Telescope find_files<cr>
nnoremap <silent> <leader>file <cmd>Telescope file_browser<cr>
nnoremap <silent> <leader>grep <cmd>Telescope live_grep<cr>
nnoremap <silent> <leader>git <cmd>Telescope git_files<cr>
nnoremap <silent> <leader>gcm <cmd>Telescope git_commits<cr>
nnoremap <silent> <leader>kmp <cmd>Telescope keymaps<cr>
nnoremap <silent> <leader>buff <cmd>Telescope buffers<cr>
nnoremap <silent> <leader>help <cmd>Telescope help_tags<cr>

""" vimspector
nnoremap <Leader>dd :call vimspector#Launch()<CR>
nnoremap <Leader>ds :call vimspector#Stop()<CR>
nnoremap <Leader>de :call vimspector#Reset()<CR>
nnoremap <Leader>dcc :call vimspector#Continue()<CR>
nnoremap <Leader>dbb <Plug>VimspectorBreakpoints
nnoremap <Leader>db <Plug>VimspectorToggleBreakpoint
nnoremap <Leader>dT <Plug>VimspectorClearBreakpoints
nnoremap <Leader>dr <Plug>VimspectorRestart
nnoremap <Leader>dc <Plug>VimspectorContinue
nnoremap <Leader>dn <Plug>VimspectorStepOver
nnoremap <Leader>dsi <Plug>VimspectorStepInto
nnoremap <Leader>dso <Plug>VimspectorStepOut

""" lsp keymap in after/plugin/lspconfig.rc.lua
"{{{ Maximizer 
nnoremap <silent><C-w>m :MaximizerToggle!<CR>
vnoremap <silent><C-w>m :MaximizerToggle!<CR>
"}}}

"{{{ coq
let g:coq_settings = { 'keymap.eval_snips': '<leader>j' }
let g:coq_settings = { 'keymap.jump_to_mark': '<c-j>' }
