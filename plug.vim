if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'lifepillar/vim-solarized8'
Plug 'doums/darcula'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
" Plug 'honza/vim-snippets'
Plug 'vimwiki/vimwiki'
Plug 'lervag/vimtex'
Plug 'godlygeek/tabular'
Plug 'voldikss/vim-translator'
Plug 'szw/vim-maximizer'
" Plug 'puremourning/vimspector'
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'neovim/nvim-lspconfig'
Plug 'onsails/lspkind-nvim'
Plug 'williamboman/nvim-lsp-installer'
Plug 'mfussenegger/nvim-dap'
Plug 'mfussenegger/nvim-dap-python'
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'folke/lsp-colors.nvim'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'nvim-lua/popup.nvim'
" Plug 'nvim-telescope/telescope.nvim'

call plug#end()

"{{{ vimiwiki plugin
let g:vimwiki_list = [{'path': '~/.config/syncdata/vimwiki/notes/', 'syntax': 'markdown', 'ext': '.md', 'diary_rel_path': '.'}]
let g:vimwiki_global_ext = 0
let g:vimwiki_use_calendar = 1
""" usage: 
""" cheatsheet: https://gist.github.com/drkarl/4c503bccb62558dc85e8b1bc0f29e9cb
""" to rename a link, within the file and <Leader>wr
"}}} 

"{{{ vimtex
let g:tex_flavor = 'latex'
"}}}

"{{{ Maximizer 
nnoremap <silent><C-w>m :MaximizerToggle!<CR>
vnoremap <silent><C-w>m :MaximizerToggle!<CR>
"}}}

"{{{ coq
let g:coq_settings = { 'keymap.eval_snips': '<leader>j' }
let g:coq_settings = { 'keymap.jump_to_mark': '<c-j>' }
