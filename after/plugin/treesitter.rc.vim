if !exists('g:loaded_nvim_treesitter')
  echom "Not loaded treesitter"
  finish
endif

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {"python"},
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<CR>',
      scope_incremental = '<CR>',
      node_incremental = '<TAB>',
      node_decremental = '<S-TAB>',
    },
  },
  ensure_installed = {
    "python",
    "bash",
    "cpp",
    "rust",
    "go",
    "tsx",
    "bibtex",
    "lua",
    "latex",
    "toml",
    "fish",
    "php",
    "json",
    "yaml",
    "swift",
    "html",
    "scss",
    "markdown",
    "markdown_inline"
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
vim.o.foldmethod = "expr"
vim.o.foldminlines = 10
vim.o.foldnestmax = 3
vim.o.foldexpr = "nvim_treesitter#foldexpr()"
EOF

set nofoldenable
