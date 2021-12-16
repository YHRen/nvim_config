if !exists('g:loaded_telescope')
    echom "Not loaded telescope"
    finish
endif

nnoremap <silent> <leader>find <cmd>Telescope find_files<cr>
nnoremap <silent> <leader>file <cmd>Telescope file_browser<cr>
nnoremap <silent> <leader>grep <cmd>Telescope live_grep<cr>
nnoremap <silent> <leader>git <cmd>Telescope git_files<cr>
nnoremap <silent> <leader>gcm <cmd>Telescope git_commits<cr>
nnoremap <silent> <leader>kmp <cmd>Telescope keymaps<cr>
nnoremap <silent> <leader>buff <cmd>Telescope buffers<cr>
nnoremap <silent> <leader>help <cmd>Telescope help_tags<cr>
nnoremap <silent> <leader>vimrc <cmd>find_vimrc_files<cr>

lua << EOF
local actions = require('telescope.actions')
-- Global remapping
------------------------------
require('telescope').setup{
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  }
}
EOF
