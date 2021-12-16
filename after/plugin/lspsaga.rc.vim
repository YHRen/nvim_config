lua << EOF
local saga = require('lspsaga')

saga.init_lsp_saga {
    error_sign = 'E',
    warn_sign = 'W',
    hint_sign = 'H',
    infor_sign = 'I',
    border_style = "round",
}
EOF
nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>
nnoremap <silent> <c-j> <cmd>Lspsaga diagnostic_jump_next<cr>
nnoremap <silent> K <cmd>Lspsaga hover_doc<cr>
nnoremap <silent> <leader>lf <cmd>Lspsaga lsp_finder<cr>
