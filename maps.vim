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

