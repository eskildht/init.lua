-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
-- empty setup using defaults
require('nvim-tree').setup({
  sort_by = 'case_sensitive',
  view = {
    mappings = {
      list = {
        { key = '<c-s>', action = 'split' },
        { key = 'c', action = 'cd' }
      },
    },
  }
})

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>t', ':NvimTreeToggle<cr>', opts)
