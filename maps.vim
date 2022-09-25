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
nnoremap <silent> <Leader>pp <cmd>Telescope planets theme=ivy<cr>
nnoremap <silent> <leader>ff <cmd>Telescope find_files prompt_prefix=🔍<cr>
nnoremap <silent> <leader>fb <cmd>Telescope file_browser prompt_prefix=📁<cr>
nnoremap <silent> <leader>fg <cmd>Telescope live_grep prompt_prefix=rg><cr>
nnoremap <silent> <leader>fh <cmd>Telescope help_tags theme=ivy<cr>
nnoremap <silent> <leader>fk <cmd>Telescope keymaps theme=ivy<cr>
nnoremap <silent> <leader>ft <cmd>Telescope treesitter theme=ivy<cr>
nnoremap <silent> <leader>git <cmd>Telescope git_files<cr>
nnoremap <silent> <leader>gcm <cmd>Telescope git_commits<cr>
nnoremap <silent> <leader>buff <cmd>Telescope buffers<cr>

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

""" telescope-file-browser
" Insert / Normal 	 fb_actions         	 Description
" <A-c>/c         	 create             	 Create file/folder at current path (trailing path separator creates folder)
" <S-CR>          	 create_from_prompt 	 Create and open file/folder from prompt (trailing path separator creates folder)
" <A-r>/r         	 rename             	 Rename multi-selected files/folders
" <A-m>/m         	 move               	 Move multi-selected files/folders to current path
" <A-y>/y         	 copy               	 Copy (multi-)selected files/folders to current path
" <A-d>/d         	 remove             	 Delete (multi-)selected files/folders
" <C-o>/o         	 open               	 Open file/folder with default system application
" <C-g>/g         	 goto_parent_dir    	 Go to parent directory
" <C-e>/e         	 goto_home_dir      	 Go to home directory
" <C-w>/w         	 goto_cwd           	 Go to current working directory (cwd)
" <C-t>/t         	 change_cwd         	 Change nvim's cwd to selected folder/file(parent)
" <C-f>/f         	 toggle_browser     	 Toggle between file and folder browser
" <C-h>/h         	 toggle_hidden      	 Toggle hidden files/folders
" <C-s>/s         	 toggle_all         	 Toggle all entries ignoring ./ and ../
" /<C-x>          	                    	 Open in new window horizontally
" /<C-v>          	                    	 Open in new window vertically
" /<C-t>          	                    	 Open in new tab
