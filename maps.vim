""" command line mapping to behave like bash
cnoremap <C-A> <Home>
cnoremap <C-F> <Right>
cnoremap <C-B> <Left>

nnoremap <buffer><Leader>yy :%y<CR> """ copy all
nnoremap <Leader>time :pu=strftime('%c')<CR> """ get time
nnoremap <Leader>pl i[link](<C-R>*)<ESC> """ insert link from clip
nnoremap <Leader>so :source $HOME/.config/nvim/init.vim<cr> """ reload

""" tab related
nnoremap <Leader>tn :tabnew<cr> """ <c-w> T move window to new tab
nnoremap <Leader>tc :tabclose<cr> """ gt gT move around
nnoremap <Leader>tt :tabnew \| terminal<cr> i
nnoremap <silent> <leader>lc :lua require("ray.lc").replace_bracket()<cr>

""" telescope
nnoremap <silent> <Leader>pp <cmd>Telescope planets<cr>
nnoremap <silent> <leader>ff <cmd>Telescope find_files prompt_prefix=🔍<cr>
nnoremap <silent> <leader>fb <cmd>Telescope file_browser prompt_prefix=📁<cr>
nnoremap <silent> <leader>fg <cmd>Telescope live_grep prompt_prefix=rg><cr>
nnoremap <silent> <leader>fh <cmd>Telescope help_tags theme=ivy<cr>
nnoremap <silent> <leader>fk <cmd>Telescope keymaps theme=ivy<cr>
nnoremap <silent> <leader>ft <cmd>Telescope treesitter theme=ivy<cr>
nnoremap <silent> <leader>fr <cmd>Telescope registers<cr>
nnoremap <silent> <leader>fgit <cmd>Telescope git_files<cr>
nnoremap <silent> <leader>fgcm <cmd>Telescope git_commits<cr>
nnoremap <silent> <leader>fbuff <cmd>Telescope buffers<cr>
nnoremap <silent> <leader>femo :lua require("telescope.builtin").symbols{sources={'emoji', 'nerd'}}<cr>
""" in my package ./lua/ray/tele.lua
nnoremap <silent> <leader>fvim :lua require("ray.tele").find_vimrc_files()<cr>

""" vimspector <Leader>d
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
"}}}

"{{{ codecomani
nnoremap <silent><Leader>aa :CodeCompanionChat<CR>
"
"}}}
""" hop <Leader>h
nnoremap <Leader><Leader> :HopChar2<CR>
nnoremap <Leader>hl :HopLine<CR>
omap     <silent> m :<C-U>lua require('tsht').nodes()<CR>
xnoremap <silent> m :lua require('tsht').nodes()<CR>
