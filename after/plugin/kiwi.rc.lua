local ok, _ = pcall(require, 'kiwi')

-- Setup Custom wiki path if required
if not ok then
    print("kiwi not loaded")
    return
end
require('kiwi').setup({
  {
    name = "work",
    path = vim.env.HOME .. "/.config/syncdata/vimwiki/kiwi_notes"
  }
})

-- Use default path (i.e. ~/wiki/)
local kiwi = require('kiwi')

-- Necessary keybindings
vim.keymap.set('n', '<leader>ww', kiwi.open_wiki_index, {})
vim.keymap.set('n', '<leader-x>', kiwi.todo.toggle, {})

