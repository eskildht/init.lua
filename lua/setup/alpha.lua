  require('alpha').setup(require('alpha.themes.startify').config)
  local startify = require('alpha.themes.startify')
  startify.section.bottom_buttons.val = {
    startify.button('i', 'nvim config', ':e ~/.config/nvim/init.lua<cr>'),
    startify.button('q', 'quit nvim', ':qa<cr>')
  }
  -- open greeter
  vim.api.nvim_set_keymap('n', '<c-n>', ':Alpha<cr>', { noremap = true })
