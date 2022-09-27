if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'lifepillar/vim-solarized8'
Plug 'doums/darcula'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'vimwiki/vimwiki'
Plug 'lervag/vimtex'
Plug 'godlygeek/tabular'
Plug 'voldikss/vim-translator'
Plug 'szw/vim-maximizer'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'puremourning/vimspector'
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
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', {'branch': '0.1.x'}
Plug 'BurntSushi/ripgrep'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' } " sorter
Plug 'AckslD/nvim-neoclip.lua'
Plug 'nvim-telescope/telescope-file-browser.nvim' " file folder moving
Plug 'nvim-telescope/telescope-symbols.nvim' " search for emoji unicode

Plug 'hkupty/iron.nvim'  " python REPL

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
